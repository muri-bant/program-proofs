/*
    For each of the Hoare triples below,
    fill in the missing P, S, or Q
    such that the Hoare triple holds
*/

// 1. {{ P }} z := x - y {{ z < 0 }}
method FirstProblem(x: int, y: int) returns (z: int)
    requires   // complete this line with P
    ensures z < 0
{
    z := x - y;
}

// 2. {{ x >= 15 }} S {{ x == y / 3 }}
method SecondProblem(x: int) returns (y: int)
    requires x >= 15
    ensures x == y / 3
{
    // Write the statement S here
}


// Find the weakest precondition

/*
    {{ ? }} x, y := x * 2, (x * 3) % 10 {{ x - y = 5 }}
*/
method ThirdProblem(x: int) returns (y: int)
    requires // What is the precondition?
    ensures x - y == 5
{
    var y;
    x, y := x * 2, (x * 3) % 10;
}