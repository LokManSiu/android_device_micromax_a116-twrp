$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	perl device/xiaomi/HM2013023/repack-MT65xx.pl -recovery $(recovery_kernel) out/target/product/HM2013023/recovery/root $@ $(MKBOOTIMG)
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	perl device/xiaomi/HM2013023/repack-MT65xx.pl -boot $(recovery_kernel) out/target/product/HM2013023/root $@ $(MKBOOTIMG)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
