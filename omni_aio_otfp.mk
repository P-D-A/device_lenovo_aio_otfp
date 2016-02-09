# Copyright (C) 2013 OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Grab needed APNs
PRODUCT_COPY_FILES := vendor/omni/prebuilt/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/aio_otfp/full_aio_otfp.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_aio_otfp
PRODUCT_DEVICE := aio_otfp
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_MODEL := Lenovo K50-T5
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=full_aio_otfp \
	TARGET_DEVICE=aio_otfp \
	PRODUCT_MODEL="Lenovo K50-T5"
	BUILD_FINGERPRINT="Lenovo/full_aio_otfp/aio_otfp:5.0/:user/release-keys" \
	PRIVATE_BUILD_DESC="aio_otfp-user 5.0  release-keys"
