#include <stdio.h>
#include "asm.h"

int code=13, currentSalary=1000;

int main(void){
  int salary = newSalary();

  printf("Novo Salario = %d\n", salary);

  return 0;
}

