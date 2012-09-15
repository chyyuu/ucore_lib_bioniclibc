
TARGET	:=	bionic-test

CURDIR	:=	$(shell pwd)

ROOTFS	:= $(CURDIR)/rootfs
PREBUILT	:= $(CURDIR)/prebuilt
OBJ_DIR	:=	$(CURDIR)/obj
OBJ_BIN_DIR	:= $(OBJ_DIR)/bin
OBJ_LIB_DIR	:= $(OBJ_DIR)/lib
OBJ_OBJ_DIR	:= $(OBJ_DIR)/obj

LIBC	:=	$(CURDIR)/libc
LIBSTDCXX	:=	$(CURDIR)/libstdc++

SUBTARGET	:=	$(LIBC) $(LIBSTDCXX)

CROSS_COMPILE	:=	arm-linux-androideabi-
CC		:=	$(CROSS_COMPILE)gcc
CXX		:=	$(CROSS_COMPILE)g++

LDSCRIPT	:=	$(CURDIR)/bionic.ld
CFLAGS	:=	
LDFLAGS	:=	-T $(LDSCRIPT) -L$(OBJ_LIB_DIR)

export


$(TARGET) : $(SUBTARGET)
	-mkdir -p $(ROOTFS)/$@
	cp -r $(PREBUILT)/* $(ROOTFS)
	cp -r $(OBJ_LIB_DIR)/* $(ROOTFS)/system/lib/
	cp -r $(OBJ_BIN_DIR)/* $(ROOTFS)/$@
	@echo "All Testcases are generated!"


.PHONY : $(SUBTARGET) clean
$(SUBTARGET) :
	-mkdir $(OBJ_DIR)
	-mkdir $(OBJ_BIN_DIR)
	-mkdir $(OBJ_LIB_DIR)
	-mkdir $(OBJ_OBJ_DIR)
	$(MAKE) -C $@


clean:
	rm -rf $(OBJ_DIR) $(ROOTFS)
