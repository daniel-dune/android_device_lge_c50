USE_CAMERA_STUB := true

# Inherit from the proprietary version

-include vendor/lge/c50/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER:= true

TARGET_BOOTLOADER_BOARD_NAME := c50

# Kernel offsets

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=c50 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=504m
BOARD_KERNEL_BASE := 0x80000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/lge/c50/dt.img --tags_offset 0x00000100
BOARD_KERNEL_PAGESIZE := 2048

# Fix this up by examining /proc/mtd on a running device 

BOARD_BOOTIMAGE_PARTITION_SIZE := 24576000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 24576000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2450944000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3997696000
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_PREBUILT_KERNEL := device/lge/c50/kernel
TARGET_KERNEL_SOURCE := kernel/lge/c50
TARGET_KERNEL_CONFIG := c50_mpcs_us_defconfig

# Recovery

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
HAVE_SELINUX := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
