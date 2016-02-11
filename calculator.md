# Calculator Exercise
Build a calculator command line interface (CLI) that allows a user to perform arithmetic operations.

## Baseline
The program should ask the user for an operation (string or numeric symbol) and two numbers.

## Primary Requirements
The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.

- The program should have support for these four operations:
    - add (+)
    - subtract (-)
    - multiply (*)
    - and divide (/)
- The program should accept both the name (`add`) and the symbol (`+`) for each possible operation.

## Optional Enhancements
- Print out the formula in addition to the result, i.e. `2 + 2 = 4`
- Add support for computing exponents (`2^4 = 2 * 2 * 2 * 2 = 16`).
- Add support for the modulo operator (`10 % 3 = 1`).
- Gracefully handle unexpected user input:
  - What happens if the user input is empty (i.e., the user just pressed enter)?
  - What happens if the user tries to add `hotdog` to `elephant`?
- Make your program know when it needs to return an _integer_ versus a _float_.
- Add support for parentheticals, i.e. `10 / (5 + 5) = 1`.
