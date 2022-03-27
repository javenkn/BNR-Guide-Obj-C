//
//  main.c
//  Addresses
//
//  Created by J on 3/12/22.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 7;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    printf("A float is %zu bytes\n", sizeof(float));
    return 0;
}
