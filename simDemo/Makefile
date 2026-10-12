TARGET = main

all: main

main: main.o Being.o

main.o: main.cc Being.h

Being.o: Being.cc Health.h Desire.h Position.h Task.h

clean:
	-rm -f $(TARGET) *.o$

