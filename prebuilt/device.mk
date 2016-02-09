#
# Copyright 2013 The Android Open-Source Project
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
#

LOCAL_KERNEL := device/lenovo/P780_ROW/prebuilt/kernel

LOCAL_CURTAIN := device/lenovo/P780_ROW/recovery/twres/images/curtain.jpg

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/default.prop:default.prop

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/prebuilt/sh:sbin/sh

PRODUCT_COPY_FILES += \
	$(LOCAL_CURTAIN):recovery/root/twres/images/curtain.jpg

$(call inherit-product-if-exists, vendor/lenovo/P780_ROW/device-vendor.mk)
