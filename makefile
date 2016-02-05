CC = g++
CC_FLAGS = -w -Wall -std=c++11
#LIBS := -lglut -lGL -lGLU

# File names
EXEC = run
		SOURCES = $(wildcard *.cpp)
		OBJECTS = $(SOURCES:.cpp=.o)
	
# Main target
$(EXEC): $(OBJECTS)
		$(CC) $(OBJECTS) -o $(EXEC) $(LIBS)
		make clean

# To obtain object files
%.o: %.cpp
		$(CC) -c $(CC_FLAGS) $< -o $@

# To remove generated files
clean:
		rm -f $(OBJECTS)
