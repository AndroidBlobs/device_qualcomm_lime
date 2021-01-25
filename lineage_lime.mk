# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lime device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := qualcomm
PRODUCT_DEVICE := lime
PRODUCT_MANUFACTURER := qualcomm
PRODUCT_NAME := lineage_lime
PRODUCT_MODEL := M2010J19SI

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm
TARGET_VENDOR := qualcomm
TARGET_VENDOR_PRODUCT_NAME := lime
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.200830.002 V12.0.5.0.QJQINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := qti/qssi/qssi:10/QKQ1.200830.002/V12.0.5.0.QJQINXM:user/release-keys
