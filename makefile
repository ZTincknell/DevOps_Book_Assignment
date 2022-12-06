all: DevOps_Book_Assignment.exe

DevOps_Book_Assignment.exe: DevOps_Book_Assignment.o
  gcc -o DevOps_Book_Assignment.exe DevOps_Book_Assignment.o
  
DevOps_Book_Assignment.o: DevOps_Book_Assignment.c
  gcc -c DevOps_Book_Assignment.c
 
clean: 
  rm DevOps_Book_Assignment.o DevOps_Book_Assignment.exe
