SINGLE_RAW_OBJ	:=	test_cond test_mutex test_pthread_cond test_pthread_create test_setjmp
SINGLE_OBJ		:=	$(addprefix $(OBJ_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))
MULTI_OBJ		:=	test_relocs 

all :	$(SINGLE_OBJ) $(MULTI_OBJ)
	@echo haha-bionic

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	$(CC) $(CFLAGS) -o $@ $(notdir $@).c  $(LDFLAGS)

test_relocs : test_relocs.c lib_relocs.c
	$(CC) $(CFLAGS) -o $(OBJ_DIR)/$@ $^ $(LDFLAGS)

test_static_init : test_static_init.cpp lib_static_init.cpp lib_static_init.h
	$(CXX) $(CFLAGS) -o $(OBJ_DIR)/$@ test_static_init.cpp lib_static_init.cpp $(LDFLAGS)
