#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <android-base/properties.h>
#include <android-base/logging.h>
#include <sys/resource.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

using android::base::GetProperty;

#include <fstream>
#include <string>

std::string get_sku_from_bootconfig() {
    std::ifstream infile("/proc/bootconfig");
    if (!infile.is_open()) {
        LOG(ERROR) << "Failed to open /proc/bootconfig";
        return "";
    }

    std::string line;
    while (std::getline(infile, line)) {
        if (line.rfind("androidboot.product.hardware.sku", 0) == 0) {
            size_t quote1 = line.find('"');
            size_t quote2 = line.find('"', quote1 + 1);

            if (quote1 != std::string::npos && quote2 != std::string::npos) {
                return line.substr(quote1 + 1, quote2 - quote1 - 1);
            }
        }
    }

    return "";
}

void property_override(const std::string& name, const std::string& value)
{
    size_t valuelen = value.size();

    prop_info* pi = (prop_info*) __system_property_find(name.c_str());
    if (pi != nullptr) {
        __system_property_update(pi, value.c_str(), valuelen);
    }
    else {
        int rc = __system_property_add(name.c_str(), name.size(), value.c_str(), valuelen);
        if (rc < 0) {
            LOG(ERROR) << "property_set(\"" << name << "\", \"" << value << "\") failed: "
                       << "__system_property_add failed";
        }
    }
}

void model_property_override(const std::string& device, const std::string& model)
{
    property_override("ro.product.device", device);
    property_override("ro.product.odm.device", device);
    property_override("ro.product.system.device", device);
    property_override("ro.product.vendor.device", device);
    property_override("ro.build.product", device);
    property_override("ro.product.name", device);
    property_override("ro.product.odm.name", device);
    property_override("ro.product.product.device", device);
    property_override("ro.product.product.name", device);
    property_override("ro.product.system.name", device);
    property_override("ro.product.system_ext.device", device);
    property_override("ro.product.system_ext.name", device);
    property_override("ro.product.vendor.name", device);
    property_override("ro.product.model", model);
    property_override("ro.product.odm.model", model);
    property_override("ro.product.system.model", model);
    property_override("ro.product.vendor.model", model);
    property_override("ro.product.product.model", model);
    property_override("ro.product.system_ext.model", model);
}

void vendor_load_properties() {
    std::string sku = GetProperty("ro.boot.product.hardware.sku", "");

    if (sku.empty()) {
        sku = get_sku_from_bootconfig();
	if (sku.empty()) {
            model_property_override("gold", "Redmi Note 13 5G");
            return;
        }
    }

    if (sku == "gold_a_cn") {
        model_property_override("gold", "Redmi Note 13R Pro");
    } else if (sku == "gold_a_in") {
        model_property_override("gold", "POCO X6 Neo 5G");
    } else if (sku == "gold_a_old") {
        model_property_override("gold", "Redmi Note 13R Pro");
    } else if (sku == "gold_cn") {
        model_property_override("gold", "Redmi Note 13 5G");
    } else if (sku == "gold_in") {
        model_property_override("gold", "Redmi Note 13 5G");
    } else if (sku == "iron_gl") {
        model_property_override("iron", "Redmi Note 13 5G");
    } else if (sku == "iron_p_gl") {
        model_property_override("iron", "Redmi Note 13 5G");
    } else {
        model_property_override("gold", "Redmi Note 13 5G");
    }
}
