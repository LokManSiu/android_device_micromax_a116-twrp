# Release name
PRODUCT_RELEASE_NAME := HM2013023

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/HM2013023/device_HM2013023.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HM2013023
PRODUCT_NAME := omni_HM2013023
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM 1W
PRODUCT_MANUFACTURER := Xiaomi
