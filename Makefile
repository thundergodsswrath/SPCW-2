CXX = g++
CXXFLAGS = -Iinclude -Wall -Wextra

LIBRARY = libcalc.a
EXECUTABLE = calculatorApp
SOURCES = src/calculator.cpp src/main.cpp
OBJECTS = $(SOURCES:.cpp=.o)

all: $(LIBRARY) $(EXECUTABLE)

$(LIBRARY): src/calculator.o
	ar rcs $@ $^

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@

clean:
	rm -f $(OBJECTS) $(LIBRARY) $(EXECUTABLE)
