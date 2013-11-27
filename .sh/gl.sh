echo "g++ $1 -lgl -lglu -lglut"
g++ $1.cpp -lgl -lglu -lglut -o $1
g++ $1.cc -lgl -lglu -lglut -o $1
