# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

# Google Camera
ifneq ($(filter lineage_lynx ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/extra/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml
endif #TARGET_PRODUCT
