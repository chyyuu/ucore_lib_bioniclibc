OBJ_OBJ_DIR := $(OBJ_OBJ_DIR)/common

SINGLE_RAW_OBJ	:= bench_pthread bench_stdio test_clock test_clone test_dlopen_null test_drand48 test_executable_destructor test_libgen test_pthread_cleanup_push test_pthread_getcpuclockid test_pthread_join test_pthread_mutex test_pthread_once test_sem_post test_semaphore test_seteuid test_tm_zone test_udp test_getaddrinfo test_gethostbyname test_gethostname test_strptime test_strftime_2039
SINGLE_OBJ		:=	$(addprefix $(OBJ_BIN_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))
MULTI_RAW_OBJ	:=	hello_world 
MULTI_OBJ		:=	$(addprefix $(OBJ_BIN_DIR)/,$(MULTI_RAW_OBJ))

all : $(OBJ_OBJ_DIR) $(SINGLE_OBJ) $(MULTI_OBJ)
	@echo haha-common

$(OBJ_OBJ_DIR) :
	mkdir -p $(OBJ_OBJ_DIR)

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	$(CC) $(CFLAGS) -o $@ $(notdir $@).c  $(LDFLAGS)

$(OBJ_BIN_DIR)/hello_world : hello_world.cpp
	$(CXX) $(CFLAGS) -o $@ $< $(LDFLAGS)


