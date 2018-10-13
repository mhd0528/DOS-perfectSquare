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
  a. For Ubuntu basedsystems
    1. Go the project directory
    2. Type the command in the terminal: mix escript.build(Optional)
    3. Type the command in the terminal: ./project1 10000004
    4. Here the first command line argument is the value of&#39;n&#39;
    5. Here the second command line argument is the value of&#39;k&#39;
    6. General command: ./project1 \&lt;n\&gt;\&lt;k\&gt;

  
  b. For Windows
    1. Go the project directory
    2. Type the command in the cmd: mix escript.build(Optional)
    3. Type the command in the cmd: escript .\project1 10000004
    4. Here the first command line argument is the value of&#39;n&#39;
    5. Here the second command line argument is the value of&#39;k&#39;
    6. General command: escript .\project1 \&lt;n\&gt;\&lt;k\&gt;
2.Result of running theprogram

Command given:   ./project1 1000000 4

Nonumberwasprinted.Thismeansthatthereareno4consecutivenumberswhosesum of squares is a perfectsquare.

When only &#39;End of Output&#39; is printed, it means no number wasprinted.

3.OutputFormat

 a)First all the start indices which follow the Lucas Square Pyramid Principle willbedisplayed line by
 b)Then &#39;End of Output&#39; is
 c)When only &#39;End of Output&#39; is printed, it means no number was
 d)The list of numbers is not printed in sorted
