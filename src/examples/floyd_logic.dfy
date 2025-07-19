// Floyd Logic:
// Use boolean formulas to describe what is known before and after each statement (program points 0, 1...)
// Break down reasoning about entire program into reasoning about individual statements

method MyMethod(x: int) returns (y: int)
    requires 0 < x <= 50
    ensures 12 <= y <= 110
{
    // 0: 0 < x <= 50 (precondition holds, initial state)

    var a := x * 2;
    assert 2 <= a <= 100; 
    // 1: (0 < x <= 50) && (2 <= a <= 100)

    y := a + 10;
    assert 12 <= y <= 110;
    // 2: (0 < x <= 50) && (2 <= a <= 100) && (12 <= y <= 110) (final state)
}

// Hoare triple notation {{ P }} S {{ Q }}
// P is the pre-state of the statement S
// S is a non-terminating and non-crashing statement that will lead state to Q
// Q is the post-state, after executing the statement S
// For examples, {{ x == 5 }} x := x * 10 {{ x == 50 }}