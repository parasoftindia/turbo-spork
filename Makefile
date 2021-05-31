CC=cpptestcc -compiler gcc_7-64 -line-coverage -- gcc
#CC=cpptestscan gcc

FLAGS=-g -I.

SRCS=sensor.c

EXEC=sensor.exe

.PHONY = clean all

all : $(EXEC)

$(EXEC) : $(SRCS)
	$(CC) $(FLAGS) C:\Softwares\x64\Parasoft\C++test\10.4\engine\coverage\runtime\build\cpptest.o -o $@ $(SRCS)
	#$(CC) $(FLAGS) -o $@ $(SRCS)

clean:
	rm -rf $(EXEC)

