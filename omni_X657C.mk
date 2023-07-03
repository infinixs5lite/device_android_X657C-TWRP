# Release name
PRODUCT_RELEASE_NAME := X657C

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Define Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X657C
PRODUCT_NAME := omni_X657C
PRODUCT_BRAND := infinix
PRODUCT_MODEL := Infinix smart 5
PRODUCT_MANUFACTURER := infinix mobility 

PRODUCT_GMS_CLIENTID_BASE := android-infinix
