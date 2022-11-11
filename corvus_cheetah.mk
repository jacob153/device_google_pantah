# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common CorvusOS stuff
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

include device/google/pantah/device-corvus.mk

TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
USE_GAPPS := true

PRODUCT_BRAND := google
PRODUCT_DEVICE := cheetah
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := corvus_cheetah

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Pixel7Pro \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.221105.002 9104446 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

$(call inherit-product, vendor/google_devices/cheetah/cheetah.mk)

# Official
RAVEN_LAIR=Official
CORVUS_MAINTAINER=HurtCopain
