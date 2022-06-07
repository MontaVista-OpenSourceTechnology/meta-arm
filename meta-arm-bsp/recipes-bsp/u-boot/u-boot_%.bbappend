FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#
# Corstone-500 MACHINE
#
SRC_URI:append:corstone500 = " \
                   file://0001-armv7-adding-generic-timer-access-through-MMIO.patch \
                   file://0002-board-arm-add-corstone500-board.patch"

#
# Corstone1000 64-bit machines
#
CORSTONE1000_DEVICE_TREE:corstone1000-mps3 = "corstone1000-mps3"
CORSTONE1000_DEVICE_TREE:corstone1000-fvp = "corstone1000-fvp"
EXTRA_OEMAKE:append:corstone1000 = ' DEVICE_TREE=${CORSTONE1000_DEVICE_TREE}'

SYSROOT_DIRS:append:corstone1000 = " /boot"

SRC_URI:append:corstone1000 = " \
        file://0001-cmd-load-add-load-command-for-memory-mapped.patch \
        file://0002-arm-add-support-to-corstone1000-platform.patch \
        file://0003-usb-common-move-urb-code-to-common.patch \
        file://0004-usb-add-isp1760-family-driver.patch \
        file://0005-corstone1000-enable-isp1763-usb-controller.patch \
        file://0006-arm_ffa-introducing-Arm-FF-A-low-level-driver.patch \
        file://0007-arm_ffa-introducing-armffa-command.patch \
        file://0008-arm_ffa-introducing-MM-communication-with-FF-A.patch \
        file://0009-arm_ffa-introducing-test-module-for-UCLASS_FFA.patch \
        file://0010-arm_ffa-corstone1000-enable-FF-A-and-MM-support.patch \
        file://0011-efi-corstone1000-introduce-EFI-capsule-update.patch \
        file://0012-corstone1000-Update-FFA-shared-buffer-address.patch \
        file://0013-corstone1000-Make-sure-shared-buffer-contents-are-no.patch \
        file://0014-arm-corstone1000-fix-unrecognized-filesystem-type.patch \
        file://0015-efi_capsule-corstone1000-pass-interface-id-and-buffe.patch \
        file://0016-efi_boottime-corstone1000-pass-interface-id-and-kern.patch \
        file://0017-efi_loader-corstone1000-remove-guid-check-from-corst.patch \
        file://0018-arm_ffa-removing-the-cast-when-using-binary-OR-on-FI.patch \
        file://0019-Return-proper-error-code-when-rx-buffer-is-larger.patch \
        file://0020-Use-correct-buffer-size.patch \
        file://0021-Update-comm_buf-when-EFI_BUFFER_TOO_SMALL.patch \
        file://0022-efi_loader-populate-ESRT-table-if-EFI_ESRT-config-op.patch \
        file://0023-efi_firmware-add-get_image_info-for-corstone1000.patch \
        file://0024-Comment-mm_communicate-failure-log.patch \
        file://0025-efi_loader-send-bootcomplete-message-to-secure-encla.patch \
        file://0026-efi_loader-fix-null-pointer-exception-with-get_image.patch \
        file://0027-arm-corstone1000-add-mmc-for-fvp.patch \
      "

#
# FVP BASE
#
SRC_URI:append:fvp-base = " file://bootargs.cfg"

#
# FVP BASE ARM32
#
SRC_URI:append:fvp-base-arm32 = " file://0001-Add-vexpress_aemv8a_aarch32-variant.patch"

#
# FVP BASER
#
SRC_URI:append:fvp-baser-aemv8r64 = " \
    file://0001-vexpress64-Add-BASER_FVP-vexpress-board-variant.patch \
    file://0002-armv8-Add-ARMv8-MPU-configuration-logic.patch \
    file://0003-armv8-Allow-disabling-exception-vectors-on-non-SPL-b.patch \
    file://0004-armv8-ARMV8_SWITCH_TO_EL1-improvements.patch \
    file://0005-armv8-Make-disabling-HVC-configurable-when-switching.patch \
    file://0006-vexpress64-Do-not-set-COUNTER_FREQUENCY.patch \
    file://0007-vexpress64-Configure-memory-using-device-tree.patch \
    file://0008-vexpress64-Enable-LIBFDT_OVERLAY-in-the-vexpress_aem.patch \
    "

#
# TC0 and TC1 MACHINES
#
SRC_URI:append:tc = " \
        file://bootargs.cfg \
        file://0001-arm-total_compute-update-secure-dram-size.patch \
        "
