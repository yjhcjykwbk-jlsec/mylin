rm $1
g++ $1.cpp -o $1
g++ $1.cc -o $1
cat $1.in | ./$1
