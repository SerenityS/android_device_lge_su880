# inherit from the proprietary version
# needed for BP-flashing updater extensions
-include vendor/lge/su880/BoardConfigVendor.mk

COMMON_GLOBAL_CFLAGS += -DSU880 -DNEED_UMS_ENABLE
TARGET_SPECIFIC_HEADER_PATH := device/lge/su880/include

USE_CAMERA_STUB := false

TARGET_BOARD_PLATFORM := tegra

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true

TARGET_DONT_SET_AUDIO_AAC_FORMAT := true

BOARD_HAS_NO_MISC_PARTITION := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 361234432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1548140544
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_KERNEL_CMDLINE := androidboot.hardware=bssq
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Audio, Camera
TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DICS_AUDIO_BLOB

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/su880/vibrator/vibrator.c

# Init
TARGET_PROVIDES_INIT_RC := true

TARGET_PREBUILT_KERNEL := device/lge/su880/prebuilt/kernel

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/fw_bcm4329_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/fw_bcm4329_p2p.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wext
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
#WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WEXT_NO_COMBO_SCAN       := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_GPS := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lge/su880/egl.cfg

BOARD_MOBILEDATA_INTERFACE_NAME := "vsnet0"
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 14
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"

#TARGET_RECOVERY_UI_LIB := librecovery_ui_stingray
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#?
#NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_HAS_NO_SELECT_BUTTON := true
