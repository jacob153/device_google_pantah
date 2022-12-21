# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)

include device/google/pantah/device-derp.mk

DERP_BUILDTYPE := Official
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_USES_BLUR := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)

$(call inherit-product, vendor/google_devices/panther/panther.mk)
