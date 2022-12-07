all: bin/DevOps_Book_Assignment.exe

DevOps_Book_Assignment.exe: obj/DevOps_Book_Assignment.o
  gcc -o bin/DevOps_Book_Assignment.exe obj/DevOps_Book_Assignment.o
  
DevOps_Book_Assignment.o: src/DevOps_Book_Assignment.c
  gcc -c src/DevOps_Book_Assignment.c
 
clean: 
  rm obj/DevOps_Book_Assignment.o bin/DevOps_Book_Assignment.exe
