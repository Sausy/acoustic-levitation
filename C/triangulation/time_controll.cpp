#include <time_controll.hpp>

rtc_ctl::rtc_ctl(int32_t *base_addr){
  base_addr=base_addr_;
}

uint32_t rtc_ctl::read_time(void) {
    return (IORD(base_addr, (uint32_t)(0x00<<8|0)));
}
uint32_t rtc_ctl::read_trigger_time(void) {
    return (IORD(base_addr, (uint32_t)(0x01<<8|0)));
}

void rtc_ctl::set_time(uint32_t time_data) {
    IOWR(base_addr, (uint32_t)(0x00<<8|0), throttl_GPIO);
}
