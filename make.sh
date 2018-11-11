#clang++ -I/usr/include/llvm-6.0 -I/usr/include/llvm-c-6.0 lexer.cpp -o lexer.o
#clang++ -I/usr/include/llvm-6.0 -I/usr/include/llvm-c-6.0 common.cpp -o common.o

#clang++ -I/usr/include/llvm-6.0 -I/usr/include/llvm-c-6.0 -c codegen.cpp `llvm-config-6.0 --cxxflags --ldflags --system-libs --libs core` -o codegen.o

clang++ -I/usr/include/llvm-6.0 -I/usr/include/llvm-c-6.0 lexer.cpp `llvm-config-6.0 --cxxflags --ldflags --system-libs --libs core` codegen.o
