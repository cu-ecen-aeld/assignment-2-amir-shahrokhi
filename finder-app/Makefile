CROSS_COMPILE=
CC=$(CROSS_COMPILE)gcc
SRCS=writer.c
TARGET=writer

$(TARGET): $(SRCS)
	$(CC) -o $@ $^

.PHONY: clean
clean:
	rm $(TARGET)
