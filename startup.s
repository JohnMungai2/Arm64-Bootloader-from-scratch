/* We load the value at label str1 into the register R2(general purpose registers).*/
ldr r2,str1 

/* The period . is for current address, so b . means "branch to the current instruction address", which is an infinite loop.*/
b .

/*We allocate a word (4 bytes) with the value 0xDEADBEEF, and give it the label str1*/
str1: .word 0xDEADBEEF

/*

one question that you might have when returning to this code is if the first line gets read first than wouldnt 
an error ocure due to str1 being empty. the answer is no. if we put the last line first it would end up at adress 0x0
which is the defult spot for out program to start if the start location isnt specified for the cpu. It is not valid 
instruction

On a real system, the interrupt vector table should be located at address 0x0, and the general boot process should 
first have the bootloader starting, and after that switch execution to your code, which is loaded somewhere else in 
memory.

*/