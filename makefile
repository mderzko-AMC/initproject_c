CC = gcc
EXT = .c
CFLAGS = 
LIB_PATH = ./lib
BUILD_PATH = ./build
RAWFILES_PATH = ./build/raw
LIB_FILES := $(wildcard $(LIB_PATH)/*$(EXT))
NO_LIB_FILES := $(words $(LIB_FILES))

all: preparation build_libs build_main
	@echo -e "\e[0;35mBuilding... \e[0m"
	@$(CC) -o $(BUILD_PATH)/out $(RAWFILES_PATH)/libs.out $(RAWFILES_PATH)/main.out $(CFLAGS)
	@echo -e "\e[1;35m====== Run! ====== \e[0m"
	@$(BUILD_PATH)/out

build: preparation build_libs build_main
	@ echo -e "\e[1;35mBuilding done. \e[0m"
	@ echo 
	@$(CC) -o $(BUILD_PATH)/out $(RAWFILES_PATH)/libs.out $(RAWFILES_PATH)/main.out $(CFLAGS)

preparation:
	@echo find $(NO_LIB_FILES) dependences
	@mkdir -p $(BUILD_PATH)
	@mkdir -p $(LIB_PATH)
	@mkdir -p $(RAWFILES_PATH)
	

build_libs:
	@$(CC) -c $(LIB_FILES) -o $(RAWFILES_PATH)/libs.out $(CFLAGS)

build_main:
	@$(CC) -c ./main$(EXT) -o $(RAWFILES_PATH)/main.out $(CFLAGS)

clean:
	@ rm -f $(RAWFILES_PATH)/*.out
	@ rm -f $(BUILD_PATH)/*.exe
	@ echo -e "\e[1;35mCleaning done. \e[0m"
	@ echo 