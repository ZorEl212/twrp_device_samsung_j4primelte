#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=mdfpp \
    ro.hardware.gatekeeper=mdfpp \
    ro.security.keystore.keytype=gak

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_DEVICE := j4primelte
PRODUCT_NAME := twrp_j4primelte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung Galaxy J4+
PRODUCT_MANUFACTURER := samsung
