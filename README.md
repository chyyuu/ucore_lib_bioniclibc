ucore_lib_bioniclibc
====================

1. The bionic libc for ucore1. Test cases. To generate test cases binary, use:
	make

2. Prebuilt lib and linker are prepared in prebuilt directory.

3. After doing 'make', a rootfs directory is generated. If you would like to test the bionic in ucore, you could modify the Makefile in ucore_plus to let it copy the rootfs to $(TMPSFS) when generating sfsimg. After that, what you should do is :
	make sfsimg
	make -jX
int the ucore_plus directory. Then you are able to test the bionic with emulator-arm.
