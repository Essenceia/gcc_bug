CC = g++
LD = g++

FLAGS = -freport-bug

test : main.o 
	$(LD) -o main -g $^

main.o : main.cpp
	$(CC) -c main.cpp $(FLAGS)  

clean:
	rm *.o
	rm main

