#pragma once

#include <stdint.h>

#ifndef IORD
  #define IORD(base, reg) (*(((volatile int32_t*)base)+reg))
#endif
#ifndef IOWR
  #define IOWR(base, reg, data) (*(((volatile int32_t*)base)+reg)=data)
#endif

class rtc_ctl
{
  public:
    rtc_ctl(int32_t *base_addr_ = nullptr);

    uint32_t read_time(void);
    uint32_t read_trigger_time(void);
    void set_time(uint32_t time_data);

  private:
    int32_t *base_addr;
};
