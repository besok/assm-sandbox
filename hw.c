#include <stdio.h>
#include <string.h>

int main() {
  char name[10] = "Boris";
  printf("name = %s\n", name);

  strcpy(name, "NotBoris");
  printf("name = %s\n", name);

  return 0;
}