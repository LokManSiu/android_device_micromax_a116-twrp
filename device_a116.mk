$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/micromax/a116/a116-vendor.mk)

LOCAL_PATH := device/micromax/a116
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_PROPERTY_OVERRIDES := \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	BUILD_UTC_DATE=0

PRODUCT_NAME := full_a116
PRODUCT_DEVICE := a116
