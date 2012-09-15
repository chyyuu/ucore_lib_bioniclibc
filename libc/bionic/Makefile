OBJ_OBJ_DIR	:= $(OBJ_OBJ_DIR)/bionic

SINGLE_RAW_OBJ	:=	test_cond test_mutex test_pthread_cond test_pthread_create test_setjmp test_getgrouplist test_netinet_icmp
SINGLE_OBJ		:=	$(addprefix $(OBJ_BIN_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))
MULTI_RAW_OBJ	:=	test_relocs test_static_init test_dlclose_destruction
MULTI_OBJ		:=  $(addprefix $(OBJ_BIN_DIR)/,$(MULTI_RAW_OBJ)) 

all : $(OBJ_OBJ_DIR) $(SINGLE_OBJ) $(MULTI_OBJ)
	@echo haha-bionic

$(OBJ_OBJ_DIR) : 
	mkdir -p $(OBJ_OBJ_DIR)

$(SINGLE_OBJ) :	$(addsuffix .c,$@) 
	$(CC) $(CFLAGS) -o $@ $(notdir $@).c  $(LDFLAGS)

# for test_relocs
$(OBJ_BIN_DIR)/test_relocs : $(OBJ_OBJ_DIR)/test_relocs.o $(OBJ_LIB_DIR)/libtestrelocs.so
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS) -ltestrelocs

$(OBJ_OBJ_DIR)/test_relocs.o : test_relocs.c
	$(CC) $(CFLAGS) -o $@ -c $<

$(OBJ_LIB_DIR)/libtestrelocs.so : lib_relocs.c
	$(CC) $(CFLAGS) -o $@ -shared -fPIC $<

# for test_static_init
$(OBJ_BIN_DIR)/test_static_init : $(OBJ_OBJ_DIR)/test_static_init.o $(OBJ_LIB_DIR)/libteststaticinit.so
	$(CXX) $(CFLAGS) -o $@ $< $(LDFLAGS) -lteststaticinit

$(OBJ_OBJ_DIR)/test_static_init.o : test_static_init.cpp
	$(CXX) $(CFLAGS) -o $@ -c $<

$(OBJ_LIB_DIR)/libteststaticinit.so : lib_static_init.cpp lib_static_init.h
	$(CXX) $(CFLAGS) -o $@ -shared -fPIC $<

# for test_dlclose_destruction
$(OBJ_BIN_DIR)/test_dlclose_destruction : $(OBJ_OBJ_DIR)/test_dlclose_destruction.o $(OBJ_LIB_DIR)/libdlclosetest1.so $(OBJ_LIB_DIR)/libdlclosetest2.so
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS) -ldlclosetest1 -ldlclosetest2

$(OBJ_OBJ_DIR)/test_dlclose_destruction.o : test_dlclose_destruction.c
	$(CC) $(CLFAGS) -o $@ -c $<

$(OBJ_LIB_DIR)/libdlclosetest1.so : libdlclosetest1.cpp
	$(CXX) $(CFLAGS) -o $@ -shared -fPIC $<

$(OBJ_LIB_DIR)/libdlclosetest2.so : libdlclosetest2.c
	$(CC) $(CFLAGS) -o $@ -shared -fPIC $<
