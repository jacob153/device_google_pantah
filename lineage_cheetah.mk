# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common riceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

include device/google/pantah/device-lineage.mk

RICE_CHIPSET := Tensor 2

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

TARGET_FACE_UNLOCK_SUPPORTED := false

PRODUCT_BRAND := google
PRODUCT_DEVICE := cheetah
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Pixel7Pro \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.221105.002 9104446 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

$(call inherit-product, vendor/google_devices/cheetah/cheetah.mk)

# riceDroid Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_USE_PIXEL_FINGERPRINT := true
SUSHI_BOOTANIMATION  := 1440
TARGET_ENABLE_BLUR := true
WITH_GMS := true
