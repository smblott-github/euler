Euler 11: Largest Product in a Grid
===================================

This project aims to solve the Euler 11 problem (https://projecteuler.net/problem=11). The goal is to find the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in a 20x20 grid. The grid is provided in a text file named "grid.txt".

Project Structure
-----------------

- `euler-11-largest-product-in-a-grid.cpp` - The C++ source code for solving the problem.
- `Makefile` - The Makefile to compile the C++ program.
- `runner.sh` - The shell script to compile and run the program with the provided grid.txt file.
- `task-description.ascii` - The asciidoc formatted task description for the Euler 11 problem.
- `stdout.txt` - An example output file containing the expected output from the program.

Building and Running the Project
--------------------------------

1. Compile the project using the Makefile:

2. Make sure the runner.sh script is executable:

3. Run the runner.sh script to execute the compiled binary with the grid.txt file as input:

Expected Output
---------------

After running the program, the expected output should be:

Largest product of 4 adjacent numbers: 70600674
