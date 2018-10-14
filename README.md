**Introduction:**

The goal of this project is to use Elixir and the actor model to build a good solutionto

the Lucas Square Pyramid problem that runs well on multi-core machines. (The bonus partwill be in anotherdocument)

**Problem definition**

An interesting problem in arithmetic with deep implications to _elliptic curve theory_ is the problem of finding _perfect squares that are sums of consecutive squares_. A classic example is the Pythagorean identity:

3^2 + 4^2 = 5^2	(1)

that reveals that the sum of squares of 3_,_ 4 is itself a square. A more interesting example is Lucas&#39; _Square Pyramid_ :

1^2 + 2^2 + ... + 24^2 = 702	(2)

In both of these examples, sums of squares of consecutive integers form the square of another integer.

The goal of this project is to use Elixir and the actor model to build a good solution to this problem that runs well on multi-core machines.

**Requirements:**

**Input:** The input provided (as command line to your program, e.g. my app) will be two numbers:  N and k.  The overall goal of your program is to find  all k consecutive numbers starting at 1 and up to N , such that the sum of squares is itself a perfect square (square of an integer).

**Output:** Print, on independent lines, the first number in the sequence for each solution.

**Actor modeling:** This project uses exclusively the actor facility in Elixir.

# Results:

1.Instructions for running thecode
  1. For Ubuntu basedsystems
    1. Go the project directory
    2. Type the command in the terminal: mix escript.build(Optional)
    3. Type the command in the terminal: ./project1 1000000 4
    4. Here the first command line argument is the value of ‘n’
    5. Here the second command line argument is the value of ‘k’
    6. General command: ./project1 <n> <k>

  
  2. For Windows
    1. Go the project directory
    2. Type the command in the cmd: mix escript.build (Optional)
    3. Type the command in the cmd: escript .\project1 1000000 4
    4. Here the first command line argument is the value of ‘n’
    5. Here the second command line argument is the value of ‘k’
    6. General command: escript .\project1 <n> <k>

2.Result of running theprogram
Command given:   ./project1 1000000 4
Nonumberwasprinted.Thismeansthatthereareno4consecutivenumberswhosesum of squares is a perfectsquare.
When only ‘End of Output’ is printed, it means no number was printed.

3.output format
  1. For Ubuntu basedsystems
  1.First all the start indices which follow the Lucas Square Pyramid Principle will be displayed line by
  
  2.Then &#39;End of Output&#39; is
  
  3.When only ‘End of Output’ is printed, it means no number was printed.
  
  4.The list of numbers is not printed in sorted
 
4.bonus part 
  bonus part is for multiple machines.
