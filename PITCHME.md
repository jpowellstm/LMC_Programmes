@title[two numbers]
##### two numbers

Write a program that will prompt for 2 numbers, subtract the first from the second and output the answer, then subtract the second from the first and output the answer.

```assembly
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
##### one to ten down

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

---
@title[count_in_twos]
##### count in twos

Write a program to input a number then count up to that number in steps of 2, outputting the sequence.

```
INP
STA input
loopstart LDA count
        ADD two 
        OUT
        STA count
        SUB input
        BRP loopend 
        BRA loopstart
loopend HLT
one     DAT 1
two     DAT 2
input   DAT
count   DAT
```

@[1](input a number from the user to the accumulator)
@[2](store the number in memory location labeled by input)
@[3](set up the loop with the count memory location)
@[4-6](add 2 to the accumulator, output it and store it in the count memory location)
@[7-8](subtract the input number from the accumulator and branch to loopend if it's positive)
@[9](go back to the start of the loop)
@[10](the end loop condition)
@[11-14](setup data locations)

---
@title[multiply two numbers]
##### multiply two numbers

Write a program that will input two numbers and multiply them.

```
INP
STA input1
INP
STA input2
loopstart LDA output
        ADD input2
        STA output
        LDA count
        ADD one
        STA count
        SUB input1
        BRP loopend 
        BRA loopstart
loopend LDA output
        OUT
        HLT
input1  DAT
input2  DAT
count   DAT
output  DAT 0
one     DAT 1
```

@[1-4](input two numbers from the user and store them to memory locations input1 and input2)
@[5](initialise the loop and and load the output memory location to the accumulator)
@[6-7](add input2 to the accumulator and store it in the output memory location)
@[8-10](load the count to the accumulator, add one to it and store it back in the count memory location)
@[11-12](subtract the input number from the accumulator and branch to loopend if it's positive)
@[13](go back to the start of the loop)
@[14-16](the end loop condition, load output, output it and halt)
@[17-21](setup data locations)
