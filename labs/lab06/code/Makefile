#Yujian Li(yl7kd) 03/12/16 Section 102

CXX = clang++ -O2

OFILES = wordPuzzle.o timer.o hashTable.o

#.SUFFIXES: .o .cpp

main: $(OFILES)
				$(CXX) $(OFILES)

clean:
		-rm -f *.o *~ wordPuzzle

wordPuzzle.o: wordPuzzle.cpp  

hashTable.o: hashTable.cpp hashTable.h

timer.o: timer.cpp timer.h

