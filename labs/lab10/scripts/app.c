#include "stdlib.h"
#include "stdio.h"

int main() {
    printf("введите число: ");
    int num;
    scanf("%d", &num);
    exit(num < 0 ? 0 : num > 0 ? 1 : 2); 
    // return num < 0 ? 0 : num > 0 ? 1 : 2; 
    // ^^^можно так, не нужно будет подключать stdlib
}
