CC = g++ -v
LD = g++ -v

FLAGS = -freport-bug -save-temps

test : main.o 
	$(LD) -o main -g $^

main.o : main.cpp
	$(CC) -c main.cpp $(FLAGS)  

clean:
	rm -f *.o
	rm -f *.s
	rm -f *.ii
	rm -f *.out
	rm -f main

