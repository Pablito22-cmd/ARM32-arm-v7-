#include <stdio.h>

extern int add_numbers(int* b, int n);

int main(void){
    int vec[4] = {1,2,3,4};
    int result = add_numbers(vec, 4);

    printf("Result = %d\n", result);

    return 0;
}