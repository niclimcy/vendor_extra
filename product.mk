ifneq ($(filter lineage_marlin lineage_beryllium lineage_tissot ,$(TARGET_PRODUCT)),)
# TARGET_ARCH doesn't get set in time, so let's make sure its done before we inherit gapps
TARGET_ARCH := arm64
-include vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk
endif

ifneq ($(filter lineage_wt88047 ,$(TARGET_PRODUCT)),)
# TARGET_ARCH doesn't get set in time, so let's make sure its done before we inherit gapps
TARGET_ARCH := arm
-include vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk
endif
