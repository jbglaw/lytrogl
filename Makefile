#!/usr/bin/make -f

CFLAGS = -Wall -Wextra -pedantic -g -DGL_GLEXT_PROTOTYPES	\
	 `pkg-config --cflags gtkglext-1.0`			\
	 `pkg-config --cflags gtk+-2.0`
OBJ = main.o opengl.o
#LIBS = -lGL -lglut -lfreeimage `pkg-config --libs gtkglext-1.0` `pkg-config --libs gtk+-3.0`
LIBS = -lfreeimage `pkg-config --libs gtkglext-1.0` `pkg-config --libs gtk+-2.0`
OUT=lytrogl

all: $(OUT)

lytrogl: $(OBJ)
	$(CC) -o $(OUT) $(OBJ) $(LIBS)

lcean: clean
clean:
	-rm -f $(OBJ) $(OUT)
