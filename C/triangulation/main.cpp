/*
 * main.c
 *
 * Author       : Léa Strobino
 * Revision     : 1.0
 * Last updated : Sun, 10 Jun 2018 12:47:43 +0200
 */

#include "fpga_interface.hpp"
#include "time_controll.hpp"



int main(int argc, char *argv[]) {

  piezo_ctl piezo_ctl();
  rtc_ctl rtc_ctl(rtc_base_addr);
  //if (tty) printf("> ");

  return 0;
}
