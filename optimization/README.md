# Optimization

This is about how does the compiler automatically optimize our code, it will also have a small part about little optimization that a programmer can do.
But it will mainly be about compiler optimization.

## Jump in programs
Our first program is a simple program that displays the result of our operations. 
But this code is totally determinist, which means it will always give us the same result. 

### Compiler optimisation 0
Let's compile using the optimisation at level 2:
```gcc optimization.c -O2 -S```
Then we see that the compiler simply create a variable with the value 47 and print it. This optimization could have been done by the programmer and the compiler has done it. Computer science works ! 

### Compiler optimization 1
We create a simpler program that do some operations on variables.
If we compile with the `-O2` the compiler will only do one multiplication:
In the `optimization1.s` we can only see one `imull` which is equivalent to a signed multiplication. 
Note: those optimization could have been done by the programer !
If you want to compare, there are two files: `no-optimization1.s` which has been compiled with `-O0` and `optimization1.s` which has been compiled with `-02`. 
