//RUN: llvm-mc -triple x86_64-unknown-unknown --show-encoding < %s  | FileCheck %s

// CHECK: vaesenc %xmm3, %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdc,0xeb]
          vaesenc %xmm3, %xmm2, %xmm21

// CHECK: vaesenclast %xmm3, %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdd,0xeb]
          vaesenclast %xmm3, %xmm2, %xmm21

// CHECK: vaesdec %xmm3, %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xde,0xeb]
          vaesdec %xmm3, %xmm2, %xmm21

// CHECK: vaesdeclast %xmm3, %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdf,0xeb]
          vaesdeclast %xmm3, %xmm2, %xmm21

// CHECK: vaesenc  (%rcx), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdc,0x29]
          vaesenc  (%rcx), %xmm2, %xmm21

// CHECK: vaesenc  -64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdc,0x6c,0x24,0xfc]
          vaesenc  -64(%rsp), %xmm2, %xmm21

// CHECK: vaesenc  64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdc,0x6c,0x24,0x04]
          vaesenc  64(%rsp), %xmm2, %xmm21

// CHECK: vaesenc  268435456(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdc,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesenc  268435456(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenc  -536870912(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdc,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesenc  -536870912(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenc  -536870910(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdc,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesenc  -536870910(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenclast  (%rcx), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdd,0x29]
          vaesenclast  (%rcx), %xmm2, %xmm21

// CHECK: vaesenclast  -64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdd,0x6c,0x24,0xfc]
          vaesenclast  -64(%rsp), %xmm2, %xmm21

// CHECK: vaesenclast  64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdd,0x6c,0x24,0x04]
          vaesenclast  64(%rsp), %xmm2, %xmm21

// CHECK: vaesenclast  268435456(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdd,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesenclast  268435456(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenclast  -536870912(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdd,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesenclast  -536870912(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenclast  -536870910(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdd,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesenclast  -536870910(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdec  (%rcx), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xde,0x29]
          vaesdec  (%rcx), %xmm2, %xmm21

// CHECK: vaesdec  -64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xde,0x6c,0x24,0xfc]
          vaesdec  -64(%rsp), %xmm2, %xmm21

// CHECK: vaesdec  64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xde,0x6c,0x24,0x04]
          vaesdec  64(%rsp), %xmm2, %xmm21

// CHECK: vaesdec  268435456(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xde,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesdec  268435456(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdec  -536870912(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xde,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesdec  -536870912(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdec  -536870910(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xde,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesdec  -536870910(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdeclast  (%rcx), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdf,0x29]
          vaesdeclast  (%rcx), %xmm2, %xmm21

// CHECK: vaesdeclast  -64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdf,0x6c,0x24,0xfc]
          vaesdeclast  -64(%rsp), %xmm2, %xmm21

// CHECK: vaesdeclast  64(%rsp), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x08,0xdf,0x6c,0x24,0x04]
          vaesdeclast  64(%rsp), %xmm2, %xmm21

// CHECK: vaesdeclast  268435456(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdf,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesdeclast  268435456(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdeclast  -536870912(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdf,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesdeclast  -536870912(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesdeclast  -536870910(%rcx,%r14,8), %xmm2, %xmm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x08,0xdf,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesdeclast  -536870910(%rcx,%r14,8), %xmm2, %xmm21

// CHECK: vaesenc %ymm3, %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdc,0xeb]
          vaesenc %ymm3, %ymm2, %ymm21

// CHECK: vaesenclast %ymm3, %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdd,0xeb]
          vaesenclast %ymm3, %ymm2, %ymm21

// CHECK: vaesdec %ymm3, %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xde,0xeb]
          vaesdec %ymm3, %ymm2, %ymm21

// CHECK: vaesdeclast %ymm3, %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdf,0xeb]
          vaesdeclast %ymm3, %ymm2, %ymm21

// CHECK: vaesenc  (%rcx), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdc,0x29]
          vaesenc  (%rcx), %ymm2, %ymm21

// CHECK: vaesenc  -128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdc,0x6c,0x24,0xfc]
          vaesenc  -128(%rsp), %ymm2, %ymm21

// CHECK: vaesenc  128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdc,0x6c,0x24,0x04]
          vaesenc  128(%rsp), %ymm2, %ymm21

// CHECK: vaesenc  268435456(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdc,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesenc  268435456(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesenc  -536870912(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdc,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesenc  -536870912(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesenc  -536870910(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdc,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesenc  -536870910(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesenclast  (%rcx), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdd,0x29]
          vaesenclast  (%rcx), %ymm2, %ymm21

// CHECK: vaesenclast  -128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdd,0x6c,0x24,0xfc]
          vaesenclast  -128(%rsp), %ymm2, %ymm21

// CHECK: vaesenclast  128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdd,0x6c,0x24,0x04]
          vaesenclast  128(%rsp), %ymm2, %ymm21

// CHECK: vaesenclast  268435456(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdd,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesenclast  268435456(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesenclast  -536870912(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdd,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesenclast  -536870912(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesenclast  -536870910(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdd,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesenclast  -536870910(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdec  (%rcx), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xde,0x29]
          vaesdec  (%rcx), %ymm2, %ymm21

// CHECK: vaesdec  -128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xde,0x6c,0x24,0xfc]
          vaesdec  -128(%rsp), %ymm2, %ymm21

// CHECK: vaesdec  128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xde,0x6c,0x24,0x04]
          vaesdec  128(%rsp), %ymm2, %ymm21

// CHECK: vaesdec  268435456(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xde,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesdec  268435456(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdec  -536870912(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xde,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesdec  -536870912(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdec  -536870910(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xde,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesdec  -536870910(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdeclast  (%rcx), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdf,0x29]
          vaesdeclast  (%rcx), %ymm2, %ymm21

// CHECK: vaesdeclast  -128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdf,0x6c,0x24,0xfc]
          vaesdeclast  -128(%rsp), %ymm2, %ymm21

// CHECK: vaesdeclast  128(%rsp), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xe2,0x6d,0x28,0xdf,0x6c,0x24,0x04]
          vaesdeclast  128(%rsp), %ymm2, %ymm21

// CHECK: vaesdeclast  268435456(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdf,0xac,0xf1,0x00,0x00,0x00,0x10]
          vaesdeclast  268435456(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdeclast  -536870912(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdf,0xac,0xf1,0x00,0x00,0x00,0xe0]
          vaesdeclast  -536870912(%rcx,%r14,8), %ymm2, %ymm21

// CHECK: vaesdeclast  -536870910(%rcx,%r14,8), %ymm2, %ymm21
// CHECK: encoding: [0x62,0xa2,0x6d,0x28,0xdf,0xac,0xf1,0x02,0x00,0x00,0xe0]
          vaesdeclast  -536870910(%rcx,%r14,8), %ymm2, %ymm21

