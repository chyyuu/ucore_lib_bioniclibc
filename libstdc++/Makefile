OBJ_OBJ_DIR		:= $(OBJ_OBJ_DIR)/libstd++

SINGLE_RAW_OBJ	:=	test_cassert test_cctype test_climits test_cmath test_csetjmp test_csignal test_cstddef test_ctime helloworld
SINGLE_OBJ		:=	$(addprefix $(OBJ_BIN_DIR)/,$(SINGLE_RAW_OBJ))
MULTI_RAW_OBJ	:=	test_cstdint test_cstdio test_cstdlib test_string
MULTI_OBJ		:=	$(addprefix $(OBJ_BIN_DIR)/,$(MULTI_RAW_OBJ))
CXXFLAGS		:=	$(CFLAGS) -std=gnu++11
#-std=c++11

all : $(OBJ_OBJ_DIR) $(SINGLE_OBJ)	
	@echo haha-libstd++

$(OBJ_OBJ_DIR) :
	mkdir -p $(OBJ_OBJ_DIR)

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	$(CXX) $(CXXFLAGS) -o $@ $(notdir $@).cpp  $(LDFLAGS)


