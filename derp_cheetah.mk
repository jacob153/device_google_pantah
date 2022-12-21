# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

include device/google/pantah/device-derp.mk

DERP_BUILDTYPE := Official
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_USES_BLUR := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

$(call inherit-product, vendor/google_devices/cheetah/cheetah.mk)
