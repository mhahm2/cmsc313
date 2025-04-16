Author: Michael Hahm

Pupose of Software: The Purpose of this software is to implement 
and calculate matrix functions.

Files:

matrix_cpp
- matrix.h (header file that contains our Matrix class in C++)
- matrix.cpp (file that contains the matrix functionality)
- main.cpp (main file to test matrix functionality in C++)

matrix_c
- matrix.h (header file that contains our Matrix struct in C)
- matrix.c (file that contains the matrix functionality)
- main.c (main file to test matrix functionality in C)

Build Instructions:
Simply type and compile manually

- matrix_cpp: "g++ -g -o matrix_cpp main.cpp matrix.cpp" --> "./matrix_cpp"
- matrix_c: "gcc -std=c99 -o matrix_c main.c matrix.c" --> "./matrix_c"

Testing Methodology:
- Used the provided input values and matrix function (provided in matrix
screenshot and instructions of homework)

Additional Information:
- If you are compiling and running the C implementation of my code locally, for some reason, Windows flags it as a security risk (I suspect this might have to do with the most recent Windows update)
- If this happens, simply turn off real-time protection under the "Virus & threat protection settings" in Windows, and recompile and run the code (and turn real-time protection back on once you are done)
