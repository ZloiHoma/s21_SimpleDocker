#include <stdlib.h>

#include "fcgi_stdio.h"

int main() {
  while (FCGI_Accept() >= 0) {
    printf("Content-type: text/html\nStatus: 200 OK\r\n\r\nHello World!");
  }
  return 0;
}

