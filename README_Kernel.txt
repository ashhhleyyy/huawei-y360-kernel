################################################################################

1. How to Build
	- get Toolchain
		From android git server , codesourcery and etc ..
		 - arm-linux-androideabi-4.7

	- edit Makefile
		edit "CROSS_COMPILE" to right toolchain path(You downloaded).
		EX)   CROSS_COMPILE= $(android platform directory you download)/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-
		Ex)   CROSS_COMPILE=/usr/local/toolchain/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-
		// check the location of toolchain
		or
		Ex)   export CROSS_COMPILE=arm-linux-androideabi-
		Ex)   export PATH=$PATH:<toolchain_parent_dir>/arm-linux-androideabi-4.7/bin

		$ export ARCH_MTK_PLATFORM="mt6582" 
		$ export TARGET_PRODUCT="wt98360"
		$ ./mk -opt=TARGET_BUILD_VARIANT=user wt98360 new k

2. Output files
	- Kernel : arch/arm/boot/zImage
	- module : drivers/*/*.o

3. How to Clean
		$ export ARCH_MTK_PLATFORM="mt6582" 
		$ export TARGET_PRODUCT="wt98360"
		$ ./mk wt98360 clean
################################################################################
