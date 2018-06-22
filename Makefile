CC  = g++
CFLAGS  = -I. -Wall

all: daemon-name clean

daemon-name: daemon-name.o
	$(CC) -o $@ $^
	chmod 700 daemon-name

daemon-name.o: daemon-name.cpp
	$(CC) -c $(CFLAGS) $<

clean:
	rm *.o