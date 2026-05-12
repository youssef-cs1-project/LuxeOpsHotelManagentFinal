CXX      = g++
CXXFLAGS = -std=c++17 -Wall -O2
TARGET   = LuxeOps.exe
SRCDIR   = src
OBJDIR   = obj

SOURCES  = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS  = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SOURCES))

# libcurl for Windows (MinGW)
LIBS     = -lcurl -lws2_32 -lwldap32 -lcrypt32 -lssl -lcrypto

all: $(OBJDIR) $(TARGET)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS)
	@echo "Build successful! Run: $(TARGET)"

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) -I$(SRCDIR) -c $< -o $@

clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: all clean
