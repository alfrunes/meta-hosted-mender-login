COMPATIBLE_MACHINE = "(colibri-imx7|colibri-imx7-mender)"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add patch for activating touchpanel on 7" display

SRC_URI_append_colibri-imx7 = " \
${@bb.utils.contains("MACHINE_FEATURES", "touchscreen", \
" file://0001-Enable-touch-feature-by-default-for-Colibri-iMX7.patch" \
" file://0002-Use-7-capacitive-display-by-default.patch",  \
" ", d)} \
"


