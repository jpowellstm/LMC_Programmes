@title[two numbers]
##### two numbers

Write a program that will prompt for 2 numbers, subtract the first from the second and output the answer, then subtract the second from the first and output the answer.

```
INP
STA 90
INP
SUB 90
OUT
```

@[1](Take an input from the user into the accumulator)
@[2](Store this in memory location 90)
@[3](Take another input from the user into the accumulator)
@[4](Subtract the number in memory location 90 from the accumulator)
@[5](Output the number from the accululator)

---
@title[one to ten up]
##### one to ten up

Write a program to output the numbers 1 to 10 in ascending order.

```
LDA one
STA count
OUT
loopstart LDA count
        ADD one
        OUT
        STA count
        SUB ten
        BRP loopend
        BRA loopstart
loopend HLT
one     DAT 1
ten     DAT 10
count   DAT
```

@[1](load the memory location one into the accumulator)
@[2](store the value of the accumulator into the memory location count)
@[3](output the value of the accumulator)
@[4](setup a loop with the count memory location)
@[5-6](add one to the accumulator and output it)
@[7](store the value of the accumulator to the count memory location)
@[8](subtract 10 from the acculator)
@[9](check if the accumulator is zero or positive and go to loopend if it is)
@[10](loop back to the loopstart memory address)
@[11](halt if the BRP condition was met)
@[12-14](setup data locations)

---
@title[one to ten down]
### one to ten down

Write a program to output the numbers 1 to 10 in descending order.

```
LDA ten
STA count
OUT
loopstart LDA count
        SUB one
        BRZ loopend
        OUT
        STA count
        BRA loopstart
loopend HLT
one     DAT 1
ten     DAT 10
count   DAT
```

@[1](load the memory location ten into the accumulator)
@[2](store the value of the accumulator into the memory location count)
@[3](output the value of the accumulator)
@[4](setup a loop with the count memory location)
@[5](subtract 1 from the accumulator)
@[6](check if the accumulator is zero and go to loopend if it is)
@[7](output the value of the accumulator)
@[8](store the value of the accumulator to the count memory location)
@[9](loop back to the loopstart memory address)
@[10](halt if the BRP condition was met)
@[11-13](setup data locations)
