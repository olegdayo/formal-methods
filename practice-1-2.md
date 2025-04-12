# Task 1

## 1

{TRUE} if (x<y) then z:=x else z:=y {(z ≤ x) ∧ (z ≤ y)}

(x < y):

{x < y} z:=x {(z ≤ x) ∧ (z ≤ y)}

(z ≤ x) ∧ (z ≤ y)

(x ≤ x) ∧ (x ≤ y)

(x <= y)

TRUE

(x >= y):

{x >= y} z:=y {(z ≤ x) ∧ (z ≤ y)}

(z ≤ x) ∧ (z ≤ y)

(y ≤ x) ∧ (y ≤ y)

(x ≤ y)

TRUE

## 2

{(i > 0) ∧ (j > 0)} if (i<j) then m:=i else m:=j {m > 0}

(i < j):

{(i > 0) ∧ (j > 0) and (i < j)} m:=i {m > 0}

i > 0

TRUE

(j >= i):

{(i > 0) ∧ (j > 0)} else m:=j {m > 0}

j > 0

TRUE

# Task 2

{P} if (x<5) then x:=x*x else x:=x+1 {x ≥ 9}

(x < 5):

{P and (x < 5)} x:=x*x {x ≥ 9}

x^2 >= 9

x <= -3 or x >= 3

P = ((x <= -3) or (x >= 3))

(x >= 5):

{P and x >= 5} x:=x+1 {x ≥ 9}

x + 1 >= 9

x >= 8

P = (x >= 8)

Ans: P = ((x <= -3) or (x >= 3)) and (x < 5) or (x >= 8) and (x >= 5) = ((x <= -3) or (x >= 3)) and (x < 5) or (x >= 8) = (x <= -3) and (x < 5) or (x >= 3) and (x < 5) or (x >= 8) = (x <= -3) or (x >= 8) or (x >= 3) and (x < 5)

# Task 3

{n ≥ 0}
    while (x<n) do
    x:=x+1;
    p:=p+m;
{p = n * m}

inv: p = x * m and x <= n

{p = x * m and x <= n}
    x:=x+1;
    p:=p+m;
{p = x * m and x <= n}

p + m = (x + 1) * m

p = x * m

x * m + m = (x + 1) * m

x + 1 <= n

x <= n - 1

## Task 4

{a = a0 and b = b0 and a0 * b0 > 0}
while (a != b) do
    if (a > b) then
        a = a - b
    else
        b = b - a
{a = b, a = gcd(a0, b0)}

Inv: gcd(a, b) = gcd(a0, b0)

{gcd(a, b) = gcd(a0, b0)}
    if (a > b) then
        a = a - b
    else
        b = b - a
{gcd(a, b) = gcd(a0, b0)}

{a > b and gcd(a, b) = gcd(a0, b0)}
    a = a - b
{gcd(a, b) = gcd(a0, b0)}

gcd(a, b) = gcd(a0, b0)
gcd(a, b) = gcd(a - b, b)
gcd(a - b, b) = gcd(a0, b0)

TRUE

{a <= b and gcd(a, b) = gcd(a0, b0)}
    b = b - a
{gcd(a, b) = gcd(a0, b0)}

gcd(a, b) = gcd(a0, b0)
gcd(a, b) = gcd(a, b - a)
gcd(a, b - a) = gcd(a0, b0)

TRUE
