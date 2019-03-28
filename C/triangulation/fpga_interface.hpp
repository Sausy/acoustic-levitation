#include <stdint.h>
#include "socal/hps.h"
#include "soc_system.h"

#define ALT_LWFPGASLVS_OFST 0xFF200000
#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

#ifdef REALTIME_CLOCK_CONTROLL_0_BASE
    int32_t *rtc_base_addr = (int32_t*)(virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SWITCHES_BASE ) & ( unsigned long)( HW_REGS_MASK )) );
#else
    int32_t *rtc_base_addr = nullptr;
#endif
#ifdef PIEZO_CONTROLLER_0_BASE
    int32_t *piezo_base_addr = (int32_t*)(virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + LED_BASE ) & ( unsigned long)( HW_REGS_MASK )) );
#else
    int32_t *piezo_base_addr = nullptr;
#endif
#ifdef FPGA_LED_BASE
    int32_t *led_base_addr = (int32_t*)(virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + RIKSHAWCONTROL_0_BASE ) & ( unsigned long)( HW_REGS_MASK )) );
#else
    int32_t *led_base_addr = nullptr;
#endif
#ifdef FPGA_KEY_BASE
    int32_t *key_base = (int32_t*)(virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SWITCHES_BASE ) & ( unsigned long)( HW_REGS_MASK )) );
#else
    int32_t *key_base = nullptr;
#endif
