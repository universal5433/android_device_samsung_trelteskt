LOCAL_PATH := device/samsung/treltexx

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc \
    ueventd.universal5433.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/treltexx/overlay	
	
# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0

PRODUCT_PACKAGES += \
    rild \
    libril \
    libreference-ril \
    libsecril-client \
    libsecril-client-sap \
    modemloader

PRODUCT_PACKAGES += \
    SamsungServiceMode	

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl
 
# Sensors wrapper
PRODUCT_PACKAGES += \
    sensors.universal5433

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml
	
# call the proprietary setup
$(call inherit-product, vendor/samsung/treltexx/treltexx-vendor.mk)
