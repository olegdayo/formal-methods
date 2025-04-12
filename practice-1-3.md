# Task 1

При n >= 0 в обоих случаях результатом будет n!

При n < 0 первый цикл будет бесконечен (при условии, что нет переполнения), а второй будет возвращать 1

Значит, нам нужны precondition {n > 0}, а postcondition {y = n!}

Для первого:

{n > 0}
while x != 0
    y = y * x
    x = x - 1
{y = n!}

Inv: y * x! = n! and x >= 0

{y * x! = n! and x > 0 and x != 0}
     y = y * x
     x = x - 1
{y * x! = n! and x >= 0}

{y * x! = n! and x > 0}
     y = y * x
     x = x - 1
{y * x! = n! and x >= 0}

y * x * (x - 1)! = n!

y * x! = n!

Для второго:

{x < n}
    x = x + 1
    y = y * x
{y = n!}

Inv: y = x! and x <= n

{y = x! and x <= n and x < n}
    x = x + 1
    y = y * x
{y = x! and x <= n}

{y = x! and x < n}
    x = x + 1
    y = y * x
{y = x! and x <= n}

y = x!

y * x = (x+1)!

y = x!

Для первой:

{n > 0}
x = n
y = 1
{y * x! = n! and x >= 0 and x != 0}

{n > 0}
x = n
y = 1
{y * x! = n! and x > 0}

Для второй:

{n > 0}
x = 0
y = 1
{y = x! and x <= n and x < n}

{n > 0}
x = 0
y = 1
{y = x! and x < n}

# Task 2

{e > 0}
r = 1
p = x
e = n
while e > 0
    if e % 2 != 0
        r = r * p
    p = p * p
    e = e / 2
{r = x^n}

r * p ^ e = x^n and e > 0

{x >= 0 and r * p ^ e = x^n and e > 0 and e > 0}
    if e % 2 != 0
        r = r * p
    p = p * p
    e = e / 2
{x >= 0 and r * p ^ e = x^n and e > 0}

{x >= 0 and r * p ^ e = x^n and e > 0}
    if e % 2 != 0
        r = r * p
    p = p * p
    e = e / 2
{x >= 0 and r * p ^ e = x^n and e > 0}

e % 2 = 0:

{x >= 0 and r * p ^ e = x^n and e > 0 and e % 2 = 0}
    p = p * p
    e = e / 2
{x >= 0 and r * p ^ e = x^n and e > 0}

r * p ^ (e / 2) * p ^ (e / 2) = x^n

r * p ^ e = x^n

e % 2 = 1:

{x >= 0 and r * p ^ e = x^n and e > 0 and e % 2 = 1}
    r = r * p
    p = p * p
    e = e / 2
{x >= 0 and r * p ^ e = x^n and e > 0}

r * p * p ^ (e / 2) * p ^ (e / 2) = x^n

{e > 0}
r = 1
p = x
e = n
{r * p ^ e = x^n and e > 0 and e > 0}

{e > 0}
r = 1
p = x
e = n
{r * p ^ e = x^n and e > 0}

1 * x ^ n = x ^ n and e > 0

# Task 3

a = Fib_0 = 0

b = Fib_1 = 1

{n > 2}
a = 0
b = 1
k = 2
while k < n
    b = b + a
    a = b - a
    k = k + 1
{b = Fib_n}

Inv: b = Fib_k and a = Fib_k-1

{b = Fib_k a = Fib_k-1 and k > 1 and k < n}
    b = b + a
    a = b - a
    k = k + 1
{b = Fib_k and k > 1}

b = Fib_k-1 + Fib_k-2 = Fib_k
a = Fib_k - Fib_k-2 = Fib_k-1

{n > 2}
a = 0
b = 1
k = 2
{b  and k < n}

0 + 1 = 1

{TRUE}
while (x > 0) do
    x = x - 1
{TRUE}

Inv: x >= 0

{x > 0 and x >= 0}
x = x - 1
{x >= 0}

{x > 0}
x = x - 1
{x >= 0}

x >= 0

x + 1 >= 1 => x > 0
