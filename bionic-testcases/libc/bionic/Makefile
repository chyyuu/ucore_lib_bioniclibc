
SINGLE_RAW_OBJ	:=	test_cond test_mutex test_pthread_cond test_pthread_create test_setjmp
SINGLE_OBJ		:=	$(addprefix $(OBJ_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))

all :	$(SINGLE_OBJ)	
	@echo haha-bionic

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	$(CC) $(CFLAGS) -o $@ $(notdir $@).c  $(LDFLAGS)


