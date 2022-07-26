g++ -static -DLOCAL -lm -s -x c++ -Wall -Wextra -O2 -std=c++17 -o $1 $1.cpp
# t=`date +"%Y-%m-%d %T"`
# sed -i "3 c\ compiled: ${t}" $1.cpp
