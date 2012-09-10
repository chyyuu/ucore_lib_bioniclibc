
SINGLE_RAW_OBJ	:=	test_clock test_clone test_dlopen_null test_drand48 test_executable_destructor test_libgen test_pthread_cleanup_push test_pthread_getcpuclockid test_pthread_join test_pthread_mutex test_pthread_once test_pthread_rwlock test_sem_post test_semaphore test_seteuid test_tm_zone
SINGLE_OBJ		:=	$(addprefix $(OBJ_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))

all :	$(SINGLE_OBJ)	
	@echo haha-common

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	$(CC) $(CFLAGS) -o $@ $(notdir $@).c  $(LDFLAGS)


