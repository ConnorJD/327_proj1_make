#target exe
make: main.o myfunc.o
	g++ ${CFLAGS} -o myexe main.o myfunc.o

#Rebuild the main.o file
main.o: main.cpp myfunc.h
	g++ ${CFLAGS} -c main.cpp

#Rebuild the myfunc.o file
myfunc.o: myfunc.cpp myfunc.h
	g++ ${CFLAGS} -c myfunc.cpp

#'make clean' removes the executables and .o files
clean:
	rm -f *.o myexe
