FLAGS = -Wall -Werror -g

all: frequency

frequency: main.o treeFunction.o stringFunction.o
	gcc $(FLAGS) main.o treeFunction.o stringFunction.o -o frequency

main.o: main.c treeFunction.h stringFunction.h
	gcc $(FLAGS) -c main.c

treeFunction.o: treeFunction.c treeFunction.h
	gcc $(FLAGS) -c treeFunction.c

stringFunction.o: stringFunction.c
	gcc $(FLAGS) -c stringFunction.c


.PHONY: all clean

clean:
	rm -f *.o frequency