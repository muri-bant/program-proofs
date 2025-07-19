# Weakest Preconditions and Strongest Postconditions

There are two ways we can trace through the program
to establish conditions and make our code adhere to the
specifications. We can either work forward, from the preconditions
to the statements and then the postcondition, or we can
work backward, starting from postconditions.

## Strongest Postconditions (working forward)

For example,

- {{ x == 0 }} y := x + 10 {{ y > 5 }}
- {{ x == 0 }} y := x + 10 {{ y < 15 }}

We have two postconditions for the statement `y := x + 10`,
so we can construct the strongest postcondition like so:

`{{ x == 0 }} y := x + 10 {{ y > 5 && y < 15 }}`

Or, more generally,

`{{ P }} S {{ Q0 && Q1 }}`

## Weakest Preconditions (working backward)

For example,

- {{ x == 10 }} y := x % 10 {{ y == 0 }}
- {{ x == 40 }} y := x % 10 {{ y == 0 }}

Either of the preconditions can result in statement being executed,
leading to the postcondition, so we can construct the weakest precondition:

`{{ x == 10 || x == 40 }} y := x % 10 {{ y == 0 }}`

Or, more generally,

`{{ P1 || P2 }} S {{ Q }}`

This way, we know that the last program point must satisfy the postconditions
(ensures clauses), so we can work backwards, going through each statement and establishing
Hoare triples for those statements.