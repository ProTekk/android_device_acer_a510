$(call inherit-product-if-exists, vendor/acer/a510/a510-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/acer/t30-common/overlay

$(call inherit-product, device/acer/t30-common/device.mk)

# Inherit from t30-common
$(call inherit-product, device/acer/t30-common/BoardConfigCommon.mk)

PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.picasso_m.rc:root/init.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/fstab.picasso_m:root/fstab.picasso_m \
    device/acer/a510/prebuilt/ramdisk/ueventd.picasso_m.rc:root/ueventd.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/init.picasso_m.usb.rc:root/init.picasso_m.usb.rc \

PRODUCT_COPY_FILES += \
    device/acer/a510/tiny_hw.xml:system/etc/sound/picasso_m \

