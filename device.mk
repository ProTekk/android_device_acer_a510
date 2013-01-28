$(call inherit-product-if-exists, vendor/acer/a510/a510-vendor.mk)

$(call inherit-product, device/acer/t30-common/device.mk)

# Inherit from t30-common
$(call inherit-product, device/acer/t30-common/BoardConfigCommon.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

PRODUCT_COPY_FILES += \
    device/acer/t30-common/prebuilt/ramdisk/ueventd.picasso_mf.rc:root/ueventd.picasso_m.rc \

PRODUCT_COPY_FILES += \
    device/acer/t30-common/tiny_hw.xml:system/etc/sound/picasso_m \
