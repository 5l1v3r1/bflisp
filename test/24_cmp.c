#include "../libf.h"

int main() {
  unsigned int a = 10485760;
#ifndef __bfs__
  a += 2147483648;
#endif
  unsigned int b = a + a;
  printf("%d\n", b < a);
  printf("%d\n", b > a);
  printf("%d\n", b <= a);
  printf("%d\n", b >= a);
  printf("%d\n", a < b);
  printf("%d\n", a > b);
  printf("%d\n", a <= b);
  printf("%d\n", a >= b);
}
