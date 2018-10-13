# DOS-perfectSquare
Using actor model in Elixir to solve perfect square problem
Introduction:
The goal of this project is to use Elixir and the actor model to build a good solution to
the Lucas Square Pyramid problem that runs well on multi-core machines. (The bonus part will be in another document)

Problem definition
An interesting problem in arithmetic with deep implications to elliptic curve theory is the problem of finding perfect squares that are sums of consecutive squares. A classic example is the Pythagorean identity:
3^2 + 4^2 = 5^2	(1)
that reveals that the sum of squares of 3, 4 is itself a square. A more interesting example is Lucas‘ Square Pyramid :
1^2 + 2^2 + ... + 24^2 = 702	(2)
In both of these examples, sums of squares of consecutive integers form the square of another integer.
The goal of this project is to use Elixir and the actor model to build a good solution to this problem that runs well on multi-core machines.

Requirements:
Input: The input provided (as command line to your program, e.g. my app) will be two numbers:  N and k.  The overall goal of your program is to find  all k consecutive numbers starting at 1 and up to N , such that the sum of squares is itself a perfect square (square of an integer).
Output: Print, on independent lines, the first number in the sequence for each solution.
Actor modeling: This project uses exclusively the actor facility in Elixir. 

Results:
1.	Instructions for running the code
  a.	For Ubuntu based systems
    i.	Go the project directory
    ii.	Type the command in the terminal: mix escript.build (Optional)
    iii.	Type the command in the terminal: ./project1 1000000 4
    iv.	Here the first command line argument is the value of ‘n’
    v.	Here the second command line argument is the value of ‘k’
    vi.	General command: ./project1 <n> <k>

  b.	For Windows
    i.	Go the project directory
    ii.	Type the command in the cmd: mix escript.build (Optional)
    iii.	Type the command in the cmd: escript .\project1 1000000 4
    iv.	Here the first command line argument is the value of ‘n’
    v.	Here the second command line argument is the value of ‘k’
    vi.	General command: escript .\project1 <n> <k>
2.	Result of running the program

Command given:   ./project1 1000000 4

No number was printed. This means that there are no 4 consecutive numbers whose sum of squares is a perfect square.

When only ‘End of Output’ is printed, it means no number was printed.

3.	Output Format

a)	First all the start indices which follow the Lucas Square Pyramid Principle will be displayed line by line.
b)	Then ‘End of Output’ is printed.
c)	When only ‘End of Output’ is printed, it means no number was printed.
d)	The list of numbers is not printed in sorted order.



