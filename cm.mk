## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := A116

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Micromax/A116/device_A116.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A116
PRODUCT_NAME := cm_A116
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := A116
PRODUCT_MANUFACTURER := Micromax
