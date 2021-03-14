#include <stdio.h>

int main(int argc, char* argv[]){
    int a, b;
    int  x, y, z;
    scanf("%d %d", &a, &b);
    x = a * b;
    if(b >= 4){
        // z = x
        y = a * b;
        z = 0;
    }
    else {
        // z = x * 4
        z = a * b * 4;
        y = 0;
    }
    printf("x=%d,y=%d,z=%d\n", x,y,z);
    return 0;
}