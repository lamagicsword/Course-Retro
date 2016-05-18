#Yujian Li(yl7kd) Makefile 04/21/16 Section 102

CXX = clang++ -m32

CXXFFLAGS = -Wall -g

OFILES1 = huffmannode.o binary_heap.o huffmanenc.o huffmantree.o

OFILES2 = huffmannode.o huffmandec.o

.SUFFIXES: .o .cpp

all: encoder decoder

encoder: $(OFILES1)
	$(CXX) $(CXXFLAGS) $(OFILES1) -o encoder

decoder: $(OFILES2)
	$(CXX) $(CXXFLAGS) $(OFILES2) -o decoder

clean: 
	/bin/rm -f *.o *~
