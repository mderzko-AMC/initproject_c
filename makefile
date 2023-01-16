CC = gcc
EXT = .c
CFLAGS = 
LIB_PATH = ./lib
BUILD_PATH = ./build
RAWFILES_PATH = ./build/raw
LIB_FILES := $(wildcard $(LIB_PATH)/*$(EXT))
NO_LIB_FILES := $(words $(LIB_FILES))

build: preparation build_libs build_main
	@echo -e "\e[1;34mcompile... \e[0m"
	@$(CC) -o $(BUILD_PATH)/out $(RAWFILES_PATH)/libs.out $(RAWFILES_PATH)/main.out $(CFLAGS)
	@echo -e "\e[1;34m====== Run! ====== \e[0m"
	@$(BUILD_PATH)/out

preparation:
	@echo find $(NO_LIB_FILES) files on lib folder
#	touching folders if not exist:
#	@echo Folders preparation...
	@mkdir -p $(BUILD_PATH)
	@mkdir -p $(LIB_PATH)
	@mkdir -p $(RAWFILES_PATH)
	

build_libs:
	@$(CC) -c $(LIB_FILES) -o $(RAWFILES_PATH)/libs.out $(CFLAGS)

build_main:
	@$(CC) -c ./main$(EXT) -o $(RAWFILES_PATH)/main.out $(CFLAGS)

clean:
	@ echo cleaning...
	@ rm -f $(RAWFILES_PATH)/*.out
	@ rm -f $(BUILD_PATH)/*.exe
	@ echo 