#include <genesis.h>

int main() {
  char message[20] = "Hello World";
  VDP_drawText(message, 10, 13);

  while (1) {
    // For versions prior to SGDK 1.60 use VDP_waitVSync instead.
    SYS_doVBlankProcess();
  }

  return 0;
}