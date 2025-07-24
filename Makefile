CC = gcc
CFLAGS = -I./libs/zlib-1.2.2
LDFLAGS = ./libs/zlib-1.2.2/libz.a

all: main

libs/zlib-1.2.2/libz.a:
	cd libs/zlib-1.2.2 && ./configure && make

main: main.c libs/zlib-1.2.2/libz.a
	$(CC) $(CFLAGS) main.c $(LDFLAGS) -o main

clean:
	rm -f main
	cd libs/zlib-1.2.2 && make clean
