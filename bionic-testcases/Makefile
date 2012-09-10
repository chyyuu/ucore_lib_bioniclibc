
TARGET	:=	bionic-test

CURDIR	:=	$(shell pwd)

OBJ_DIR	:=	$(CURDIR)/obj

LIBC	:=	$(CURDIR)/libc
LIBSTDCXX	:=	$(CURDIR)/libstdc++

SUBTARGET	:=	$(LIBC) $(LIBSTDCXX)

CROSS_COMPILE	:=	arm-linux-androideabi-
CC		:=	$(CROSS_COMPILE)gcc
CXX		:=	$(CROSS_COMPILE)g++

LDSCRIPT	:=	$(CURDIR)/bionic.ld
CFLAGS	:=	
LDFLAGS	:=	-T $(LDSCRIPT)

export

$(TARGET) : $(SUBTARGET)
	@echo "All Testcases are generated!"


.PHONY : $(SUBTARGET) clean
$(SUBTARGET) :
	-mkdir $(OBJ_DIR)
	$(MAKE) -C $@


clean:
	rm -rf $(OBJ_DIR)
