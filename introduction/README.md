# Introduction

This repo is the first one to see if you want to understand the low level concept that i will show here. 

## Jump in the programs

Our first program is a simple display but we are not going to compile it as an executable program. 
We want to see the assembly code that is equivalent to it. 
So we use:
```gcc introduction.c -S ```
It creates a a file with the same name as our program but the extension is .s which means it's an assembly file.

### Assembly go brrrrr

By reading the assembly we don't understand it all but it's okay, we want to see when does the code call our `printf`.
We look at the code and we notice two things:
- the part that interest us is the `main`.
- we don't see any `printf` in the code.

Even if we don't see a printf function, we do have a `puts` function.
This function is close to printf because it displays a constant string in our terminal. It means our `printf` has been replaced by `puts` because it's more efficient and the compiler did this by himself.