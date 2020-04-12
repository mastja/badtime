# macro tells which compiler to use
CC = g++

# macro says using c++11 standard
CFLAGS = -std=c++11 -c

# run "make all" to run badtime
all: badtime

# make the bad sort program
bad: badtime.o
	$(CC) badtime.o -o bad

badtime.o:
	$(CC) $(CFLAGS) badtime.cpp


clean:
	rm *.o
	rm -f bad.out
	rm badtime