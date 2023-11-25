# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

# Google Camera
ifneq ($(filter lineage_lynx ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/extra/etc/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml \
    vendor/extra/etc/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += system/bin/ih8sn system/etc/ih8sn.conf system/etc/init/ih8sn.rc
PRODUCT_PACKAGES += ih8sn
endif #TARGET_PRODUCT
