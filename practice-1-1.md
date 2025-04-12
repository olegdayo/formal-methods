# Task 1

## 1

{i = 3j} if (i>j) then m:=i-j else m:=j-i {m − 2j = 0}

{i = 3j and i > j} m:=i-j {m − 2j = 0}

m = 3j - j = 2j

m - 2j = 2j - 2j = 0

(i = 3j and i > j and true) = (i = 3j and i > j)

i > j

{i = 3j and i < j} m:=j-i {m − 2j = 0}

m = j - 3j = -2j

-2j -2j = 0

j = 0 - нет предусловия

(i = 3j and i <= j and j = 0) = (i = 0 and j = 0)

Answer: i > j

## 2

{a = 0} while (x>a) do x:=x-1 {x = 0}

x = -1

Answer: x > 0

# Task 2

## 1 

{i = a − 1} i:=i+2 {i = a + 1}

i = i + 2

i + 2 = a + 1

i = a - 1

## 2 

{i = 5} a:=i + 2 {(a = 7) ∧ (i > 0)}

a = i + 2

a = 7 and i > 0

i + 2 = 7 and i > 0

i = 5 and i > 0

i = 5

## 3 

{(i = 5) ∧ (a = 3)} a:=i+2 {a = 7}

a = i + 2

a = 7

i + 2 = 7

i = 5

a = i + 2

## 4 

{TRUE} a:=i+2 {a = i + 2}

a = i + 2

i + 2 = i + 2

# Task 3

## 1 

{a > b} m:=1; n:=a-b {mn > 0}

m = 1

n = a - b

mm > 0

a - b > 0

a > b

## 2 

{s = 2^i} i :=i+1; s := s*2 {s = 2^i}

i = i + 1

s = s * 2

s = 2^i

s * 2 = 2^(i + 1)

s = 2^(i + 1) / 2

s = 2^i

TODO: расписывать утверждение

# Task 4

## 1

{x >= 2} if (x < 8) then x=x*2 else x=x+1 {x > 0}

{x >= 2 and x < 8} x=x*2 {x > 0}

x = x * 2

x > 0

x >= 2 and x < 8

{x >= 2 and x >= 8} x=x+1 {x > 0}

x = x + 1

x + 1 > 0

x > -1
