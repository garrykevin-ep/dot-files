function code(){
if [ -z $1 ];
  then
    g++ -std=c++14 a.cpp -o main && timeout 4s ./main<inputf.in
else
    g++ -std=c++14 "$1" -o main && timeout 4s ./main<inputf.in
fi
}
