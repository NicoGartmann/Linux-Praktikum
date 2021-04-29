CC := gcc
CPPFLAGS :=
LDFLAGS :=
LDLIBS := -lstdc++
SILENT := @
ECHO := echo

all: main.cpp hello_world.a
	$(SILENT) $(ECHO) "--- Creating $@ ---"
	$(SILENT) $(CC) $^ -o $@ $(LDFLAGS) $(LDLIBS)

%.o: %.cpp
	$(SILENT) $(ECHO) "--- Compiling $< ---"
	$(SILENT) $(CC) -c $(CPPFLAGS) $<

hello_world.a: hello_world.o
	$(SILENT) $(ECHO) "--- Creating $@ ---"
	$(SILENT) ar -crs $@ $<

.PHONY: clean

clean:
	$(SILENT) $(ECHO) "--- Removing unnecessary files ---"
	$(SILENT) rm -f *.o *.a all
