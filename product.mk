ifneq ($(filter lineage_q6x ,$(TARGET_PRODUCT)),)
ifeq ($(WITH_GMS),true)
WITH_GMS_TV := true
GMS_MAKEFILE := gms_minimal.mk
endif #WITH_GMS
endif #TARGET_PRODUCT
