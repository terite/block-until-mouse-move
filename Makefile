# Suffixes
%.o : %.m
	$(CC) $(CCFLAGS) -c -o $@ $^

# Macros
CC = clang
CCFLAGS = -lobjc -framework Cocoa
SOURCES= $(wildcard *.m) 
OBJECTS= $(SOURCES:.m=.o)
PROG = block-until-mouse-move

# Targets
all: $(SOURCES) $(PROG)

$(PROG): $(OBJECTS)
	$(CC) -o $@ $(OBJECTS) $(CCFLAGS) 

clean:
	rm -f $(OBJECTS) $(PROG)

