# Makefile
all: First
First: First.o
	gcc -o $@ $+
First.o : First.s
	as -g -mfpu=vfpv2 -o$@ $<
clean: 
	rm -vf first *.o
