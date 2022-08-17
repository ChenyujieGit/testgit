src=$(shell ls ./)
src1=$(filter-out global_var_in_lib,$(src)) #删除保存动态库源文件的目录
C_OBJ+=$(foreach n,$(src1),$(wildcard $(DIR)/$(SRC_DIR)/$(n)/*.c))
C_OBJ+=$(wildcard $(DIR)/$(SRC_DIR)/*.c)
LIB_C=$(wildcard $(DIR)/$(SRC_DIR)/global_var_in_lib/*.c)
LIB_O=$(notdir $(patsubst %.c,%.o,$(LIB_C)))
LIB=var
CUR_OBJ=$(patsubst %.c,%.o,$(C_OBJ))
#O_OBJ+=$(foreach i,$(notdir $(CUR_OBJ)),$(DIR)/$(SRC_DIR)/$(i))
#$(warning OBJ=$(O_OBJ))
O_OBJ=$(notdir $(CUR_OBJ))
out.bin:$(O_OBJ)
	$(CC) -c -fpic $(LIB_C) -I $(DIR)/$(INC)/
	$(CC) -shared -o $(DIR)/lib/lib$(LIB).so $(LIB_O) -I$(DIR)/$(INC)/ -Wl,-Bsymbolic
	$(CC) -o $(DIR)/$(OUT)/out.bin $(O_OBJ) -I $(DIR)/$(INC)/ -l$(LIB) -L$(DIR)/lib -Wl,-Bsymbolic
$(O_OBJ):$(C_OBJ) 
	$(CC) -c $(C_OBJ)  -I $(DIR)/$(INC)/ -lnum -L$(DIR)/lib
clean:
	rm $(O_OBJ) $(DIR)/$(OUT)/out.bin $(DIR)/lib/*

