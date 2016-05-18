#Yujian Li(yl7kd) 04/26/16 Makefile Section 102

CXX = clang++ -m32 -O2

CXXFLAGS = -Wall -g

OFILES = traveling.cpp middleearth.cpp

.SUFFIXES: .o .cpp

main: $(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)
		doxygen

clean:
		/bin/rm -f *.o *~
