# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from shiva device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := shiva
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_shiva
PRODUCT_MODEL := M2004J19PI

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := shiva
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="shiva-user 11 RP1A.200720.011 V12.5.7.0.RJRINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/shiva/shiva:11/RP1A.200720.011/V12.5.7.0.RJRINXM:user/release-keys
