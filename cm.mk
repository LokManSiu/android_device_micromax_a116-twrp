## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a116

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/micromax/a116/device_a116.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a116
PRODUCT_NAME := cm_a116
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := Canvas HD
PRODUCT_MANUFACTURER := Micromax
