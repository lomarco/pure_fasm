CC=fasm

TARGET=fasm
FASM_SRC=./src/fasm.asm
INSTALL_DIR=/usr/bin

all: build

build:
	$(CC) $(FASM_SRC)
	mv src/fasm .

clean:
	rm -f $(TARGET)

install:
	install -m 755 $(TARGET) $(INSTALL_DIR)/$(TARGET)

remove:
	rm $(INSTALL_DIR)/$(TARGET)
