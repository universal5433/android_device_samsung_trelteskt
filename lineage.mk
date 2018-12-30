# Inherit device configuration
$(call inherit-product, device/samsung/treltexx/device.mk)
$(call inherit-product, device/samsung/trelte-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/lineage/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_treltexx
PRODUCT_DEVICE := treltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910C
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
BUILD_FINGERPRINT := samsung/treltexx/trelte:6.0.1/MMB29K/N910CXXS2DRL1:user/release-keys
BOARD_VENDOR := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=treltexx
