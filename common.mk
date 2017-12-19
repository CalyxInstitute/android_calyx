PRODUCT_COPY_FILES += \
	calyx/bootanimation.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += calyx/overlay/common

PRODUCT_PACKAGES += \
	Updater

PRODUCT_PACKAGES += \
	Signal \
	Orbot \
	Orfox \
	Orfox-libs \
	Bitmask \
	Bitmask-libs
