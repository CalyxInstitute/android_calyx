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
	Orfox-libs \
	Bitmask \
	Bitmask-libs \
	Conversations \
	k9mail \
	OpenKeychain \
	ooniprobe \
	ooniprobe-libs \
	Briar
