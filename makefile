CC = gcc
EXT = .c
CFLAGS = 
LIB_PATH = ./lib
BUILD_PATH = ./build
RAWFILES_PATH = ./build/raw
LIB_FILES := $(wildcard $(LIB_PATH)/*$(EXT))


build: preparation build_libs build_main
	@$(CC) -o $(BUILD_PATH)/out $(RAWFILES_PATH)/libs.out $(RAWFILES_PATH)/main.out
	@echo running...
	@echo 
	@$(BUILD_PATH)/out

preparation:
#	touching folders if not exist:
#	@echo Folders preparation...
	@mkdir -p $(BUILD_PATH)
	@mkdir -p $(LIB_PATH)
	@mkdir -p $(RAWFILES_PATH)

build_libs:
	@$(CC) -c $(LIB_FILES) -o $(RAWFILES_PATH)/libs.out

build_main:
	@$(CC) -c ./main$(EXT) -o $(RAWFILES_PATH)/main.out

clean:
	@ echo cleaning...
	@ rm -f $(RAWFILES_PATH)/*.out
	@ rm -f $(BUILD_PATH)/*.exe
	@ echo 