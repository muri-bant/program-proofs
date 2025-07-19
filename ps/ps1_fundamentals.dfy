// Problem 1

// We say one condition A is stronger than another condition B
// if A ==> B. For example, in "A ==> A || B", "A" is stronger
// whereas "A || B" is weaker

// Write a stronger precondition for this method
// Hint: The range of a also applies to b

method MaxProduct(a: int, b: int) returns (max: int, pro: int)
    requires 0 <= a <= 100 // Edit this line only
    ensures pro == a * b 
    ensures a >= b ==> max == a 
    ensures b >= a ==> max == b 
{
    if a >= b {
        max := a;
    } else {
        max := b;
    }
    pro := a * b;
}


// Problem 2

// Whereas methods are opaque, functions are transparant.
// Hence, they can be used in specifications.

// Predicate is a form of function that only returns boolean value

// A construct (function, variable, etc) that is used only for
// verification and not required at compile-time is called "ghost"

// We can label constructs as "ghost" to make it explicit.
// For example,

// ghost function Square(x: int): int {
//     x * x
// }

// Label all declarations in the code below that are not
// required at compile-time as ghost.

// Hint: A ghost is not allowed on right side of assignment

predicate IsEven(x: int) {
    x % 2 == 0
}

predicate IsOdd(x: int) {
    x % 2 != 0
}

method SomeMethod(x: nat, y: nat) returns (r: int)
    requires IsEven(x) || IsOdd(y)
    requires x + y < 100
    ensures (x % 5 == 0 && y % 5 == 0) ==> r == x + y
    ensures (x % 5 != 0 || y % 5 != 0) ==> r == x - y
{
    if x % 5 == 0 && y % 5 == 0 {
        r := x + y;
    } else {
        r := x - y;
    }
}