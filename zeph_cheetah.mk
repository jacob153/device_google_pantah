# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit from the custom device configuration.
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

include device/google/pantah/device-zeph.mk

#CUSTOM_BUILD_TYPE := Official
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
WITH_GMS := true
#TARGET_INCLUDE_LIVE_WALLPAPERS := true
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
#USE_PIXEL_CHARGER_IMAGES := true
#TARGET_SUPPORTS_CALL_RECORDING := true

PRODUCT_BRAND := google
PRODUCT_DEVICE := cheetah
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := zeph_cheetah

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Pixel7Pro \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.220804.031 9071314 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TD1A.220804.031/9071314:user/release-keys

$(call inherit-product, vendor/google_devices/cheetah/cheetah-vendor.mk)
