# Author: Nasir Davis
# File Name: Makefile
# Last Modified: 02/20/2026
# Purpose: Build the employee program from multiple C++ source files
#

# Compiler
CC = g++

# Name of executable to build (./employee)
TARGET = employee

# Compile flags
CFLAGS = -c -Wall -Wextra

# Object files
OBJS = main.o Employee.o Officer.o Supervisor.o

# Default target
all: $(TARGET)

# Links object files main, Employee, Officer, and Supervisor into executable files
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp
# Compiles Employee.cpp into .o
Employee.o: Employee.cpp
	$(CC) $(CFLAGS) Employee.cpp

# Compiles Officer.cpp into .o
Officer.o: Officer.cpp
	$(CC) $(CFLAGS) Officer.cpp

# Compiles Supervisor.cpp into .o
Supervisor.o: Supervisor.cpp
	$(CC) $(CFLAGS) Supervisor.cpp

# Removes all unwanted files
clean:
	rm -f *.o *~ $(TARGET)
