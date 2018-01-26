PRODUCT_COPY_FILES += \
	calyx/bootanimation.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += calyx/overlay/common

PRODUCT_PACKAGES += \
	Updater \
	CalyxLayout

PRODUCT_PACKAGES += \
	Signal \
	Orbot \
	Orfox \
	Bitmask \
	Conversations \
	k9mail \
	OpenKeychain \
	ooniprobe \
	Briar
