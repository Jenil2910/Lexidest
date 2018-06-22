CC  = g++
CFLAGS  = -I. -Wall

all: lexidest.out clean

lexidest.out: lexidest.o
	$(CC) -o $@ $^
	chmod 700 lexidest.out

lexidest.o: lexidest.cpp
	$(CC) -c $(CFLAGS) $<

clean:
	rm *.o