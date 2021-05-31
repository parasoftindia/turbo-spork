#CC=cpptestcc -compiler gcc_7-64 -line-coverage -- gcc
CC= gcc

FLAGS=-g -I.

SRCS=sensor.c

EXEC=sensor.exe

.PHONY = clean all

all : $(EXEC)

$(EXEC) : $(SRCS)
	$(CC) $(FLAGS) -o $@ $(SRCS)
	#$(CC) $(FLAGS) -o $@ $(SRCS)

clean:
	rm -rf $(EXEC)

