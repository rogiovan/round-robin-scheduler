CC=gcc
CFLAGS=-Wall
SRC_DIR=src
CFILES=roundrobinsched.c
BUILD_DIR=build
BIN_DIR=bin
EXEC=roundrobinsched
OBJS=$(CFILES:%.c=$(BUILD_DIR)/%.o)
MKDIR=mkdir -p

all: $(BIN_DIR)/$(EXEC)

$(BUILD_DIR)/%.o : $(SRC_DIR)/%.c
	$(MKDIR) $(BUILD_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BIN_DIR)/$(EXEC) : $(OBJS)
	$(MKDIR) $(BIN_DIR)
	$(CC) -o $(BIN_DIR)/$(EXEC) $(OBJS)

clean:
	rm -f $(BUILD_DIR)/*
	rm -f $(BIN_DIR)/*

distclean:
	rm -r -f $(BUILD_DIR)
	rm -r -f $(BIN_DIR)