all: bin/DevOps_Book_Assignment.exe

DevOps_Book_Assignment.exe: obj/DevOps_Book_Assignment.o
  gcc -o DevOps_Book_Assignment.exe DevOps_Book_Assignment.o
  
DevOps_Book_Assignment.o:
  gcc -c DevOps_Book_Assignment.c
 
clean: 
  rm -f DevOps_Book_Assignment.o DevOps_Book_Assignment.exe
