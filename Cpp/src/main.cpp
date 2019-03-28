/*
 * main.c
 *
 * Author       : Léa Strobino
 * Revision     : 1.0
 * Last updated : Sun, 10 Jun 2018 12:47:43 +0200
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "piezo_ctl.hpp"
#include "fpga_interface.hpp"
#include "time_controll.hpp"

#include <unistd.h>

int main(int argc, char *argv[]) {

  addr_base addr_base;
  piezo_ctl piezo_ctl(addr_base.virtual_base);
  rtc_ctl rtc_ctl(addr_base.rtc_base_addr);
  //if (tty) printf("> ");
  uint32_t current_time;

  printf("set rtc to ini\n\n");
  rtc_ctl.set_time(100);
  rtc_ctl.set_time(100);
  //set_time_(100);

  while (1) {
    current_time = rtc_ctl.read_trigger_time();
    printf("trigger time: %u\n", current_time);
    current_time = rtc_ctl.read_trigger_time();
    printf("trigger time: %u\n", current_time);
    current_time = rtc_ctl.read_time();
    printf("counting time: %u\n", current_time);
    current_time = rtc_ctl.read_time();
    printf("counting time: %u\n", current_time);
    current_time = get_time();
    printf("counting time: %u\n", current_time);
    current_time = get_time();
    printf("counting time: %u\n", current_time);
    rtc_ctl.set_time(100);
    current_time = rtc_ctl.read_time();
    printf("counting time: %u\n", current_time);

    usleep(1000000);
    piezo_ctl.stop_piezo_out();
    usleep(1000000);
    piezo_ctl.start_piezo_out();
  }

  return 0;
}
