#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2024-2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# maintainer
OF_MAINTAINER := ukriu

# screen settings
OF_SCREEN_H := 2400
OF_STATUS_H := 94
OF_HIDE_NOTCH := 1
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# other stuff
OF_QUICK_BACKUP_LIST := /boot;/data;
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_DYNAMIC_FULL_SIZE := 9126805504
OF_NO_REFLASH_CURRENT_ORANGEFOX := 1
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 1
OF_FL_PATH1 := /sys/class/leds/mt6360_flash_ch1
OF_FORCE_CASEFOLDING := 1
ALLOW_MISSING_DEPENDENCIES := 1
FOX_USE_UPDATED_MAGISKBOOT := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 4

# extras
FOX_ENABLE_KERNELSU_SUPPORT := 1
FOX_DELETE_AROMAFM := 1
FOX_USE_ZIP_BINARY := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_USE_GREP_BINARY := 1
FOX_USE_XZ_UTILS := 1
OF_ENABLE_LPTOOLS := 1
FOX_ASH_IS_BASH := 1
FOX_REPLACE_TOOLBOX_GETPROP := 1
FOX_USE_BASH_SHELL := 1
FOX_USE_NANO_EDITOR := 1
FOX_ENABLE_APP_MANAGER := 1

# other
FOX_VIRTUAL_AB_DEVICE := 1
FOX_RECOVERY_SYSTEM_PARTITION := /dev/block/mapper/system
FOX_RECOVERY_VENDOR_PARTITION := /dev/block/mapper/vendor
FOX_VENDOR_BOOT_RECOVERY := 1
FOX_TARGET_DEVICES := gold
TARGET_DEVICE_ALT := gold
FOX_DISABLE_UPDATEZIP := 1
FOX_DELETE_MAGISK_ADDON := 1
FOX_VARIANT := A15

# ----- data format stuff -----
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1
OF_FORCE_DATA_FORMAT_F2FS := 1

# use dmctl to work around problems with formatting the /data partition
OF_USE_DMCTL := 1

# automatically wipe /metadata after data format
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1

# avoid MTP issues after data format
OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1

# don't spam the console with loop errors
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1

# lz4 compression
OF_USE_LZ4_COMPRESSION := 1

