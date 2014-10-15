# Inherit some common mahdi stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e610/full_e610.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL5

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e610
PRODUCT_NAME := mahdi_e610
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E610
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=000001 \
    PRODUCT_NAME=m4_open_eu \
    PRIVATE_BUILD_DESC="e610-userdebug 4.4.2 KVT49L 000001 release-keys" \
    BUILD_FINGERPRINT="lge/e610/4.4.2/KVT49L/000001:userdebug/release-keys"
    
  # Enable Torch
PRODUCT_PACKAGES += \
    Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/bootanimations/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip
