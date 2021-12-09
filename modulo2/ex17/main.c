#include <stdio.h>
#include "asm.h"

int a=12, b=2, res;

int main(void){

  res = sum();
  printf("Sum: %d\n", res);
  res = sub();
  printf("Sub: %d\n", res);
  res = mult();
  printf("Mult: %d\n", res);
  res = div();
  printf("Div: %d\n", res);
  res = mod();
  printf("Mod: %d\n", res);
  res = pow2();
  printf("Pow2: %d\n", res);
  res = pow3();
  printf("Pow3: %d\n", res);
  
  return 0;
}

