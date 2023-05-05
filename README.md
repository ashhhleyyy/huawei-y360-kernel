## Preparations
Warning: it is discouraged to use repositories from an older distribution. Use at your own risk!

To make it possible to execute the `Cgen` binary which was built for i386, install the following package:

~~~
sudo apt install libc6:i386
~~~

Building this kernel requires either GCC 3 or 4. It should build with GCC 4.8. 

~~~
sudo sh -c 'echo "deb http://en.archive.ubuntu.com/ubuntu/ xenial main universe" >> /etc/apt/sources.list'
sudo apt update
sudo apt install gcc-4.8-arm-linux-gnueabihf
~~~

## Building
Compile the kernel:

~~~
./mk -opt=TARGET_BUILD_VARIANT=user wt98360 new k
~~~

The `zImage` should be located in `./out/target/product/wt98360/obj/KERNEL_OBJ/arch/arm/boot/`
