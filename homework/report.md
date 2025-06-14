# Traffic Light Generator

By Oleg Sidorenkov

Option №7

![task](https://github.com/olegdayo/formal-methods/blob/master/homework/task.png?raw=true)

## Introduction

In this report we will take a look at a simulation of traffic lights working and will verify it

In order to do so, we will need to prove the following features:

- Safety: lights for conflicting paths must not be green simultaniously
- Liveness: if the light is queued to be green, it will become one eventually
- Fairness: no traffic light is green eternally

## Architecture

### Generator

### EventLoop

## Results

### Safety

```pml
ltl s1 { [] !(statuses[0] && (statuses[2] || statuses[3] || statuses[4])) }
ltl s2 { [] !(statuses[1] && (statuses[2] || statuses[4])) }
ltl s3 { [] !(statuses[2] && (statuses[0] || statuses[1] || statuses[4] || statuses[5])) }
ltl s4 { [] !(statuses[3] && (statuses[5] || statuses[0] || statuses[4])) }
ltl s5 { [] !(statuses[4] && (statuses[2] || statuses[1] || statuses[3] || statuses[0] || statuses[5])) }
ltl s6 { [] !(statuses[5] && (statuses[2] || statuses[3] || statuses[4])) }
```

Statuses store the status of the traffic light

Statements check that intersecting roads statuses don't both have green lights

```sh
❯ ltl system.pml s1 s2 s3 s4 s5 s6
Processing file system.pml

> Running LTL s1
> LTL s1 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL s2
> LTL s2 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL s3
> LTL s3 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL s4
> LTL s4 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL s5
> LTL s5 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL s6
> LTL s6 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0s
```

Failed to find a counter example (that 2 intersecting paths have green in the same time)

```s1.log
pan: ltl formula s1
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.39 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=     4.84 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=     7.46 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     10.1 R=   4e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s1)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2082649 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s1
	_spin_nvr.tmp:8, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 10.7 seconds
pan: rate 396169.27 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```s2.log
pan: ltl formula s2
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.46 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=      5.5 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=      8.1 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     11.1 R=   4e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s2)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2087126 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s2
	_spin_nvr.tmp:17, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 11.8 seconds
pan: rate 362115.57 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```s3.log
pan: ltl formula s3
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.45 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=     5.29 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=     8.54 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     11.7 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s3)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2090846 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s3
	_spin_nvr.tmp:26, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 12.6 seconds
pan: rate 337419.35 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```s4.log
pan: ltl formula s4
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.68 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=     5.37 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=     7.97 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     10.7 R=   4e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s4)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2085266 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s4
	_spin_nvr.tmp:35, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 11.5 seconds
pan: rate 370955.36 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```s5.log
pan: ltl formula s5
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.73 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=     5.72 R=   3e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=      8.4 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     11.3 R=   4e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s5)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2085264 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s5
	_spin_nvr.tmp:44, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 12.1 seconds
pan: rate 351641.16 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```s6.log
pan: ltl formula s6
Depth=  381587 States=    1e+06 Transitions= 5.16e+06 Memory=   418.613	t=     2.56 R=   4e+05
Depth=  381587 States=    2e+06 Transitions=  1.1e+07 Memory=   655.625	t=     5.28 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.65e+07 Memory=   892.636	t=     7.72 R=   4e+05
Depth=  381587 States=    4e+06 Transitions=  2.2e+07 Memory=  1129.648	t=     10.2 R=   4e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (s6)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4254858 states, stored
 19216161 states, matched
 23471019 transitions (= stored+matched)
        0 atomic steps
hash conflicts:   2083746 (resolved)

Stats on memory usage (in Megabytes):
 1201.094	equivalent memory usage for states (stored*(State-vector + overhead))
 1010.961	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.270	memory lost to fragmentation
 1190.097	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim s6
	_spin_nvr.tmp:53, state 10, "-end-"
	(1 of 10 states)

pan: elapsed time 11 seconds
pan: rate  385403.8 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

### Liveness

```pml
ltl l1 { [] ((queue[0]==1 && !statuses[0]) -> <> statuses[0]) }
ltl l2 { [] ((queue[1]==1 && !statuses[1]) -> <> statuses[1]) }
ltl l3 { [] ((queue[2]==1 && !statuses[2]) -> <> statuses[2]) }
ltl l4 { [] ((queue[3]==1 && !statuses[3]) -> <> statuses[3]) }
ltl l5 { [] ((queue[4]==1 && !statuses[4]) -> <> statuses[4]) }
ltl l6 { [] ((queue[5]==1 && !statuses[5]) -> <> statuses[5]) }
```

Queue stores lights that will eventually be applied

Therefore, we check that any traffic light that has already competed for 

```sh
❯ ltl system.pml l1 l2 l3 l4 l5 l6
Processing file system.pml

> Running LTL l1
> LTL l1 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL l2
> LTL l2 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL l3
> LTL l3 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL l4
> LTL l4 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL l5
> LTL l5 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL l6
> LTL l6 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0
```

Failed to find a counter example (queued traffic light that never has been applied)

```l1.log
pan: ltl formula l1
Depth=    1798 States=    1e+06 Transitions= 5.97e+06 Memory=   300.156	t=     2.33 R=   4e+05
Depth=    1798 States=    2e+06 Transitions=  1.2e+07 Memory=   418.613	t=     4.66 R=   4e+05
Depth=    4846 States=    3e+06 Transitions= 1.79e+07 Memory=   537.363	t=     6.86 R=   4e+05
Depth=    4846 States=    4e+06 Transitions=  2.4e+07 Memory=   655.820	t=     9.11 R=   4e+05
Depth=    6730 States=    5e+06 Transitions= 2.99e+07 Memory=   774.472	t=     11.4 R=   4e+05
Depth=    6730 States=    6e+06 Transitions=  3.6e+07 Memory=   893.027	t=     13.8 R=   4e+05
Depth=  227169 States=    7e+06 Transitions=  4.2e+07 Memory=  1030.820	t=     16.4 R=   4e+05
Depth=  381587 States=    8e+06 Transitions= 5.28e+07 Memory=  1264.316	t=     21.5 R=   4e+05
Depth=  381587 States=    9e+06 Transitions= 6.29e+07 Memory=  1501.425	t=     26.3 R=   3e+05
Depth=  381587 States=    1e+07 Transitions= 7.18e+07 Memory=  1716.660	t=     30.6 R=   3e+05
Depth=  381587 States=  1.1e+07 Transitions= 8.15e+07 Memory=  1948.203	t=     35.3 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l1)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7804166 states, stored (1.13535e+07 visited)
 74150875 states, matched
 85504349 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  11878770 (resolved)

Stats on memory usage (in Megabytes):
 2203.019	equivalent memory usage for states (stored*(State-vector + overhead))
 1854.110	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    4.110	memory lost to fragmentation
 2031.406	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l1
	_spin_nvr.tmp:64, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 37.4 seconds
pan: rate 303812.52 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```l2.log
pan: ltl formula l2
Depth=    1850 States=    1e+06 Transitions= 5.93e+06 Memory=   300.156	t=     2.37 R=   4e+05
Depth=    1850 States=    2e+06 Transitions=  1.2e+07 Memory=   418.613	t=      4.8 R=   4e+05
Depth=    4286 States=    3e+06 Transitions= 1.79e+07 Memory=   537.363	t=     7.21 R=   4e+05
Depth=    4286 States=    4e+06 Transitions=  2.4e+07 Memory=   655.820	t=     9.56 R=   4e+05
Depth=    6170 States=    5e+06 Transitions= 2.98e+07 Memory=   774.472	t=       12 R=   4e+05
Depth=    6170 States=    6e+06 Transitions= 3.59e+07 Memory=   892.929	t=     14.6 R=   4e+05
Depth=  287869 States=    7e+06 Transitions=  4.2e+07 Memory=  1038.340	t=     17.3 R=   4e+05
Depth=  381587 States=    8e+06 Transitions=  5.2e+07 Memory=  1268.320	t=     22.4 R=   4e+05
Depth=  381587 States=    9e+06 Transitions= 6.09e+07 Memory=  1485.996	t=     26.5 R=   3e+05
Depth=  381587 States=    1e+07 Transitions= 7.16e+07 Memory=  1715.781	t=     31.8 R=   3e+05
Depth=  381587 States=  1.1e+07 Transitions= 8.13e+07 Memory=  1947.812	t=     36.6 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l2)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7806790 states, stored (1.13587e+07 visited)
 74017142 states, matched
 85375864 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  11608526 (resolved)

Stats on memory usage (in Megabytes):
 2203.760	equivalent memory usage for states (stored*(State-vector + overhead))
 1854.697	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    4.112	memory lost to fragmentation
 2031.992	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l2
	_spin_nvr.tmp:75, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 38.7 seconds
pan: rate 293658.79 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```l3.log
pan: ltl formula l3
Depth=     984 States=    1e+06 Transitions= 6.03e+06 Memory=   300.058	t=     2.44 R=   4e+05
Depth=    3358 States=    2e+06 Transitions=  1.2e+07 Memory=   418.808	t=     4.78 R=   4e+05
Depth=    5242 States=    3e+06 Transitions=  1.8e+07 Memory=   537.363	t=     7.01 R=   4e+05
Depth=    5242 States=    4e+06 Transitions=  2.4e+07 Memory=   655.820	t=     9.57 R=   4e+05
Depth=    6897 States=    5e+06 Transitions=    3e+07 Memory=   774.472	t=     12.1 R=   4e+05
Depth=   24581 States=    6e+06 Transitions=  3.6e+07 Memory=   894.199	t=     14.6 R=   4e+05
Depth=  381587 States=    7e+06 Transitions= 4.56e+07 Memory=  1114.804	t=     19.7 R=   4e+05
Depth=  381587 States=    8e+06 Transitions=  5.6e+07 Memory=  1346.250	t=     24.7 R=   3e+05
Depth=  381587 States=    9e+06 Transitions= 6.45e+07 Memory=  1550.254	t=     29.1 R=   3e+05
Depth=  381587 States=    1e+07 Transitions= 7.37e+07 Memory=  1765.488	t=     33.5 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l3)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7620293 states, stored (1.09857e+07 visited)
 71448780 states, matched
 82434508 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  11366917 (resolved)

Stats on memory usage (in Megabytes):
 2151.114	equivalent memory usage for states (stored*(State-vector + overhead))
 1810.362	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    4.015	memory lost to fragmentation
 1987.754	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l3
	_spin_nvr.tmp:86, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 38.9 seconds
pan: rate 282700.15 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```l4.log
pan: ltl formula l4
Depth=    1036 States=    1e+06 Transitions= 5.98e+06 Memory=   300.058	t=      2.5 R=   4e+05
Depth=    4398 States=    2e+06 Transitions= 1.19e+07 Memory=   418.808	t=     4.74 R=   4e+05
Depth=    4398 States=    3e+06 Transitions= 1.79e+07 Memory=   537.265	t=     7.06 R=   4e+05
Depth=    6282 States=    4e+06 Transitions= 2.39e+07 Memory=   656.015	t=     9.24 R=   4e+05
Depth=    6282 States=    5e+06 Transitions= 2.98e+07 Memory=   774.472	t=     11.5 R=   4e+05
Depth=   38827 States=    6e+06 Transitions= 3.58e+07 Memory=   895.175	t=     13.8 R=   4e+05
Depth=  381587 States=    7e+06 Transitions= 4.45e+07 Memory=  1121.054	t=     18.1 R=   4e+05
Depth=  381587 States=    8e+06 Transitions= 5.36e+07 Memory=  1337.851	t=     22.5 R=   4e+05
Depth=  381587 States=    9e+06 Transitions= 6.45e+07 Memory=  1570.761	t=     28.1 R=   3e+05
Depth=  381587 States=    1e+07 Transitions= 7.28e+07 Memory=  1775.156	t=     32.1 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l4)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7542277 states, stored (1.08297e+07 visited)
 69714179 states, matched
 80543875 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  10599814 (resolved)

Stats on memory usage (in Megabytes):
 2129.091	equivalent memory usage for states (stored*(State-vector + overhead))
 1791.865	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    3.974	memory lost to fragmentation
 1969.297	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l4
	_spin_nvr.tmp:97, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 36.2 seconds
pan: rate 298915.15 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```l5.log
pan: ltl formula l5
Depth=    2536 States=    1e+06 Transitions= 6.01e+06 Memory=   300.254	t=     2.49 R=   4e+05
Depth=    3792 States=    2e+06 Transitions= 1.19e+07 Memory=   418.808	t=     5.03 R=   4e+05
Depth=    5676 States=    3e+06 Transitions= 1.79e+07 Memory=   537.363	t=     7.52 R=   4e+05
Depth=    6897 States=    4e+06 Transitions=  2.4e+07 Memory=   656.015	t=       10 R=   4e+05
Depth=  148433 States=    5e+06 Transitions= 2.99e+07 Memory=   785.605	t=     12.6 R=   4e+05
Depth=  381587 States=    6e+06 Transitions= 3.89e+07 Memory=  1006.211	t=       17 R=   4e+05
Depth=  381587 States=    7e+06 Transitions= 4.94e+07 Memory=  1220.859	t=     22.1 R=   3e+05
Depth=  381587 States=    8e+06 Transitions=  5.8e+07 Memory=  1432.382	t=     26.3 R=   3e+05
Depth=  381587 States=    9e+06 Transitions= 6.63e+07 Memory=  1628.574	t=     30.9 R=   3e+05
Depth=  381587 States=    1e+07 Transitions= 7.46e+07 Memory=  1830.918	t=       35 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l5)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7317636 states, stored (1.03804e+07 visited)
 66620535 states, matched
 77000949 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  10543668 (resolved)

Stats on memory usage (in Megabytes):
 2065.678	equivalent memory usage for states (stored*(State-vector + overhead))
 1738.526	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    3.858	memory lost to fragmentation
 1916.074	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l5
	_spin_nvr.tmp:108, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 36.2 seconds
pan: rate 286356.25 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```l6.log
pan: ltl formula l6
Depth=    1746 States=    1e+06 Transitions= 5.99e+06 Memory=   300.156	t=     2.55 R=   4e+05
Depth=    1746 States=    2e+06 Transitions= 1.21e+07 Memory=   418.613	t=     5.31 R=   4e+05
Depth=    4794 States=    3e+06 Transitions=  1.8e+07 Memory=   537.363	t=     7.94 R=   4e+05
Depth=    4794 States=    4e+06 Transitions= 2.41e+07 Memory=   655.820	t=     10.7 R=   4e+05
Depth=    6678 States=    5e+06 Transitions=    3e+07 Memory=   774.472	t=     13.2 R=   4e+05
Depth=    6678 States=    6e+06 Transitions= 3.61e+07 Memory=   893.027	t=     15.8 R=   4e+05
Depth=  333555 States=    7e+06 Transitions= 4.23e+07 Memory=  1044.590	t=     18.6 R=   4e+05
Depth=  381587 States=    8e+06 Transitions= 5.31e+07 Memory=  1279.160	t=     24.4 R=   3e+05
Depth=  381587 States=    9e+06 Transitions= 6.36e+07 Memory=  1516.172	t=     30.2 R=   3e+05
Depth=  381587 States=    1e+07 Transitions=  7.2e+07 Memory=  1728.769	t=     34.8 R=   3e+05
Depth=  381587 States=  1.1e+07 Transitions= 8.24e+07 Memory=  1965.781	t=     40.9 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (l6)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  7767494 states, stored (1.12801e+07 visited)
 73792309 states, matched
 85072439 transitions (= visited+matched)
        0 atomic steps
hash conflicts:  11840377 (resolved)

Stats on memory usage (in Megabytes):
 2192.667	equivalent memory usage for states (stored*(State-vector + overhead))
 1845.400	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    4.091	memory lost to fragmentation
 2022.715	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim l6
	_spin_nvr.tmp:119, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 42.2 seconds
pan: rate 267491.82 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

### Fairness

```pml
ltl f1 { [] <> !statuses[0] }
ltl f2 { [] <> !statuses[1] }
ltl f3 { [] <> !statuses[2] }
ltl f4 { [] <> !statuses[3] }
ltl f5 { [] <> !statuses[4] }
ltl f6 { [] <> !statuses[5] }
```

Checks that every light will eventually become red

```sh
❯ ltl system.pml f1 f2 f3 f4 f5 f6
Processing file system.pml

> Running LTL f1
> LTL f1 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL f2
> LTL f2 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL f3
> LTL f3 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL f4
> LTL f4 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL f5
> LTL f5 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0

> Running LTL f6
> LTL f6 is correct: failed to find a counter example; state-vector bytes: 268, depth: 3448, errors: 0
```

Failed to find a counter example (some light will be green forever, therefore, blocking routes)

```f1.log
pan: ltl formula f1
Depth=  381587 States=    1e+06 Transitions= 5.43e+06 Memory=   369.394	t=     2.42 R=   4e+05
Depth=  381587 States=    2e+06 Transitions= 1.29e+07 Memory=   574.179	t=     5.95 R=   3e+05
Depth=  381587 States=    3e+06 Transitions= 1.88e+07 Memory=   801.230	t=     8.85 R=   3e+05
Depth=  381587 States=    4e+06 Transitions= 2.56e+07 Memory=   998.593	t=     11.7 R=   3e+05
Depth=  381587 States=    5e+06 Transitions= 3.23e+07 Memory=  1198.105	t=     14.9 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f1)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4966214 states, stored (5.67757e+06 visited)
 30423918 states, matched
 36101488 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   3072286 (resolved)

Stats on memory usage (in Megabytes):
 1401.901	equivalent memory usage for states (stored*(State-vector + overhead))
 1179.885	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.639	memory lost to fragmentation
 1358.652	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f1
	_spin_nvr.tmp:130, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 16.6 seconds
pan: rate  340995.2 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```f2.log
pan: ltl formula f2
Depth=  374005 States=    1e+06 Transitions= 5.39e+06 Memory=   340.488	t=     2.32 R=   4e+05
Depth=  381587 States=    2e+06 Transitions= 1.29e+07 Memory=   570.664	t=     6.15 R=   3e+05
Depth=  381587 States=    3e+06 Transitions= 2.03e+07 Memory=   759.433	t=     9.84 R=   3e+05
Depth=  381587 States=    4e+06 Transitions= 2.58e+07 Memory=   996.543	t=     12.9 R=   3e+05
Depth=  381587 States=    5e+06 Transitions= 3.24e+07 Memory=  1198.496	t=     16.2 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f2)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  4964551 states, stored (5.67424e+06 visited)
 30548930 states, matched
 36223174 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   3302413 (resolved)

Stats on memory usage (in Megabytes):
 1401.431	equivalent memory usage for states (stored*(State-vector + overhead))
 1179.493	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.638	memory lost to fragmentation
 1358.261	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f2
	_spin_nvr.tmp:141, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 18.2 seconds
pan: rate 312114.63 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```f3.log
pan: ltl formula f3
Depth=  242477 States=    1e+06 Transitions= 5.34e+06 Memory=   321.445	t=     2.13 R=   5e+05
Depth=  381587 States=    2e+06 Transitions= 1.22e+07 Memory=   554.843	t=     5.51 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.81e+07 Memory=   791.855	t=     9.14 R=   3e+05
Depth=  381587 States=    4e+06 Transitions=  2.5e+07 Memory=   993.515	t=     12.6 R=   3e+05
Depth=  381587 States=    5e+06 Transitions=  3.2e+07 Memory=  1194.199	t=     15.9 R=   3e+05
Depth=  381587 States=    6e+06 Transitions= 3.89e+07 Memory=  1390.781	t=     18.8 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f3)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  5153286 states, stored (6.05171e+06 visited)
 33105956 states, matched
 39157670 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   4105195 (resolved)

Stats on memory usage (in Megabytes):
 1454.709	equivalent memory usage for states (stored*(State-vector + overhead))
 1224.318	actual memory usage for states (compression: 84.16%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.736	memory lost to fragmentation
 1402.988	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f3
	_spin_nvr.tmp:152, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 18.9 seconds
pan: rate 319520.27 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```f4.log
pan: ltl formula f4
Depth=  381587 States=    1e+06 Transitions= 5.55e+06 Memory=   346.543	t=     2.64 R=   4e+05
Depth=  381587 States=    2e+06 Transitions= 1.27e+07 Memory=   563.730	t=     6.22 R=   3e+05
Depth=  381587 States=    3e+06 Transitions= 2.02e+07 Memory=   748.984	t=     10.1 R=   3e+05
Depth=  381587 States=    4e+06 Transitions= 2.57e+07 Memory=   986.093	t=     13.1 R=   3e+05
Depth=  381587 States=    5e+06 Transitions= 3.26e+07 Memory=  1185.410	t=     16.4 R=   3e+05
Depth=  381587 States=    6e+06 Transitions= 3.99e+07 Memory=  1373.105	t=     19.8 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f4)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  5227654 states, stored (6.20045e+06 visited)
 34841041 states, matched
 41041491 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   4326582 (resolved)

Stats on memory usage (in Megabytes):
 1475.702	equivalent memory usage for states (stored*(State-vector + overhead))
 1242.032	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.774	memory lost to fragmentation
 1420.664	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f4
	_spin_nvr.tmp:163, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 20.4 seconds
pan: rate 303794.71 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```f5.log
pan: ltl formula f5
Depth=  151613 States=    1e+06 Transitions= 5.41e+06 Memory=   311.777	t=     2.31 R=   4e+05
Depth=  381587 States=    2e+06 Transitions= 1.23e+07 Memory=   531.601	t=     5.65 R=   4e+05
Depth=  381587 States=    3e+06 Transitions= 1.86e+07 Memory=   759.433	t=     8.97 R=   3e+05
Depth=  381587 States=    4e+06 Transitions= 2.54e+07 Memory=   962.168	t=       12 R=   3e+05
Depth=  381587 States=    5e+06 Transitions= 3.23e+07 Memory=  1162.265	t=       15 R=   3e+05
Depth=  381587 States=    6e+06 Transitions= 3.93e+07 Memory=  1365.293	t=     18.2 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f5)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  5458629 states, stored (6.6624e+06 visited)
 37915145 states, matched
 44577545 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   5361079 (resolved)

Stats on memory usage (in Megabytes):
 1540.903	equivalent memory usage for states (stored*(State-vector + overhead))
 1296.937	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.894	memory lost to fragmentation
 1475.449	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f5
	_spin_nvr.tmp:174, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 20.4 seconds
pan: rate 325949.12 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

```f6.log
pan: ltl formula f6
Depth=  345523 States=    1e+06 Transitions= 5.37e+06 Memory=   335.507	t=      2.4 R=   4e+05
Depth=  381587 States=    2e+06 Transitions= 1.26e+07 Memory=   568.125	t=     6.37 R=   3e+05
Depth=  381587 States=    3e+06 Transitions= 1.88e+07 Memory=   783.359	t=     9.34 R=   3e+05
Depth=  381587 States=    4e+06 Transitions= 2.56e+07 Memory=   985.410	t=     12.5 R=   3e+05
Depth=  381587 States=    5e+06 Transitions= 3.23e+07 Memory=  1189.316	t=     15.8 R=   3e+05

(Spin Version 6.5.0 -- 1 July 2019)
	+ Partial Order Reduction

Full statespace search for:
	never claim         	+ (f6)
	assertion violations	+ (if within scope of claim)
	acceptance   cycles 	+ (fairness disabled)
	invalid end states	- (disabled by never claim)

State-vector 268 byte, depth reached 381587, errors: 0
  5003078 states, stored (5.7513e+06 visited)
 30748014 states, matched
 36499312 transitions (= visited+matched)
        0 atomic steps
hash conflicts:   3315419 (resolved)

Stats on memory usage (in Megabytes):
 1412.307	equivalent memory usage for states (stored*(State-vector + overhead))
 1188.693	actual memory usage for states (compression: 84.17%)
         	state-vector as stored = 221 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
   53.406	memory used for DFS stack (-m1000000)
    2.658	memory lost to fragmentation
 1367.441	total actual memory usage


unreached in proctype TrafficLight
	system.pml:52, state 14, "statuses[(curr-1)] = 1"
	system.pml:53, state 15, "queue[(curr-1)] = 0"
	system.pml:54, state 16, "currentTurn = next"
	system.pml:59, state 21, "firsthirdValue = 0"
	system.pml:63, state 27, "secondValue = 0"
	system.pml:104, state 77, "-end-"
	(6 of 77 states)
unreached in proctype TrafficGenerator
	system.pml:115, state 10, "-end-"
	(1 of 10 states)
unreached in init
	(0 of 8 states)
unreached in claim f6
	_spin_nvr.tmp:185, state 13, "-end-"
	(1 of 13 states)

pan: elapsed time 18.2 seconds
pan: rate 316353.03 states/second
ltl s1: [] (! ((statuses[0]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl s2: [] (! ((statuses[1]) && ((statuses[2]) || (statuses[4]))))
ltl s3: [] (! ((statuses[2]) && ((((statuses[0]) || (statuses[1])) || (statuses[4])) || (statuses[5]))))
ltl s4: [] (! ((statuses[3]) && (((statuses[5]) || (statuses[0])) || (statuses[4]))))
ltl s5: [] (! ((statuses[4]) && (((((statuses[2]) || (statuses[1])) || (statuses[3])) || (statuses[0])) || (statuses[5]))))
ltl s6: [] (! ((statuses[5]) && (((statuses[2]) || (statuses[3])) || (statuses[4]))))
ltl l1: [] ((! (((queue[0]==1)) && (! (statuses[0])))) || (<> (statuses[0])))
ltl l2: [] ((! (((queue[1]==1)) && (! (statuses[1])))) || (<> (statuses[1])))
ltl l3: [] ((! (((queue[2]==1)) && (! (statuses[2])))) || (<> (statuses[2])))
ltl l4: [] ((! (((queue[3]==1)) && (! (statuses[3])))) || (<> (statuses[3])))
ltl l5: [] ((! (((queue[4]==1)) && (! (statuses[4])))) || (<> (statuses[4])))
ltl l6: [] ((! (((queue[5]==1)) && (! (statuses[5])))) || (<> (statuses[5])))
ltl f1: [] (<> (! (statuses[0])))
ltl f2: [] (<> (! (statuses[1])))
ltl f3: [] (<> (! (statuses[2])))
ltl f4: [] (<> (! (statuses[3])))
ltl f5: [] (<> (! (statuses[4])))
ltl f6: [] (<> (! (statuses[5])))
  the model contains 18 never claims: f6, f5, f4, f3, f2, f1, l6, l5, l4, l3, l2, l1, s6, s5, s4, s3, s2, s1
  only one claim is used in a verification run
  choose which one with ./pan -a -N name (defaults to -N s1)
  or use e.g.: spin -search -ltl s1 system.pml
```

## Conclusion

Successfully proved that the system works perfectly: vehicles and pedestrians will never crash and eventually will proceed to their destinaiton without any traffic light eternally being green.
