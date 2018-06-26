COMPATIBLE_MACHINE = "(colibri-imx7|colibri-imx7-mender)"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Add Patch for selecting correct resolution for 7" display

SRC_URI_append_colibri-imx7 = " \
${@bb.utils.contains("MACHINE_FEATURES", "touchscreen", \
   " file://0001-Enable-800x480-resolution-for-Toradex-7-display.patch", \
   " ", d)} "

