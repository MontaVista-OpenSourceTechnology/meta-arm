# Machine specific u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

#
# FVP BASE
#
SRC_URI_append_fvp-base = " file://bootargs.cfg \
                            file://0001-vexpress64_fvp-Set-DRAM-to-4G-to-match-with-kernel-d.patch \
                          "

#
# FVP BASE ARM32
#
SRC_URI_append_fvp-base-arm32 = " file://0001-Add-vexpress_aemv8a_aarch32-variant.patch"
