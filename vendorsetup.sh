#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2025 The OrangeFox Recovery Project
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
export ALLOW_MISSING_DEPENDENCIES=true

export FOX_VIRTUAL_AB_DEVICE=1
export FOX_RECOVERY_VENDOR_BOOT_PARTITION="/dev/block/by-name/vendor_boot"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_TARGET_DEVICES=gold
export TARGET_DEVICE_ALT=gold
export FOX_VARIANT="A15"
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_DELETE_MAGISK_ADDON=1

# Extras
export FOX_ENABLE_KERNELSU_SUPPORT=0
export FOX_DELETE_AROMAFM=0
export FOX_USE_GREP_BINARY=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
