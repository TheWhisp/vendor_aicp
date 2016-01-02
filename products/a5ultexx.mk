# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for a5ultexx.
$(call inherit-product, device/samsung/a5ultexx/full_a5ultexx.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a5ultexx TARGET_DEVICE=a5ulte

# Setup device specific product configuration.
PRODUCT_NAME := aicp_a5ultexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Dāvis M. (thewhisp)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
