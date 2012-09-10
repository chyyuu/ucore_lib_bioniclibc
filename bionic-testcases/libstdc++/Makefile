
SINGLE_RAW_OBJ	:=	test_cassert test_cctype test_climits test_cmath test_csetjmp test_csignal test_cstddef test_ctime
SINGLE_OBJ		:=	$(addprefix $(OBJ_DIR)/,$(SINGLE_RAW_OBJ))
SINGLE_SRC		:=	$(addsuffix .c,$(SINGLE_RAW_OBJ))
	
CXXFLAGS		:=	$(CFLAGS) -std=gnu++11
#-std=c++11

all :	$(SINGLE_OBJ)	
	@echo haha-libstd++

$(SINGLE_OBJ) :	$(addsuffix .c,$@)
	@echo `pwd`
	$(CXX) $(CXXFLAGS) -o $@ $(notdir $@).cpp  $(LDFLAGS)


