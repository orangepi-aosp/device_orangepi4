#!/bin/bash

fastboot flash loader1 ./obj/UBOOT_OBJ/rktmp/idbloader.img
fastboot flash loader2 ./obj/UBOOT_OBJ/rktmp/uboot.img
fastboot flash trust ./obj/UBOOT_OBJ/rktmp/trust.img
fastboot flash boot ./boot-5.15.img
fastboot flash init_boot ./init_boot.img
fastboot flash super ./super_empty.img
fastboot flash recovery ./recovery.img
