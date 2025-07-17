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