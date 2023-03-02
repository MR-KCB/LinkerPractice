.DEFAULT_GOAL := help
.PHONY = all clean help

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OUTPUT_DIR)/%.o, $(SRC))
SRC_AS = $(wildcard $(SRC_DIR)/*.s)
OBJ 	+= $(patsubst $(SRC_DIR)/%.s, $(OUTPUT_DIR)/%.o, $(SRC_AS))

all: $(OUTPUT)



$(OUTPUT): $(OBJ)
	@echo Building executable...
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $(OUTPUT_DIR)\$@

$(OUTPUT_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

$(OUTPUT_DIR)/%.o: $(SRC_DIR)/%.s
	$(CC) $(CFLAGS) -c $< -o $@ 

help:
	@echo.
	@echo The next commands are supported:
	@echo all: compile source code and generate executable
	@echo.
	@echo The next make build the next files
	@echo $(SRC)

