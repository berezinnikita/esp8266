	.file	"user_main.c"
	.text
.Ltext0:
	.literal_position
	.literal .LC0, 1587673095
	.align	4
	.global	send_code_task
	.type	send_code_task, @function
send_code_task:
.LFB0:
	.file 1 "user/user_main.c"
	.loc 1 9 0
.LVL0:
	addi	sp, sp, -16
.LCFI0:
	s32i.n	a0, sp, 12
.LCFI1:
.LVL1:
.L2:
	.loc 1 12 0 discriminator 1
	l32r	a2, .LC0
	movi.n	a3, 0x20
	call0	ir_remote_send_nec
.LVL2:
	.loc 1 13 0 discriminator 1
	movi	a2, 0xc8
	call0	vTaskDelay
.LVL3:
	j	.L2
.LFE0:
	.size	send_code_task, .-send_code_task
	.literal_position
	.literal .LC1, CSWTCH$2
	.align	4
	.global	user_rf_cal_sector_set
	.type	user_rf_cal_sector_set, @function
user_rf_cal_sector_set:
.LFB1:
	.loc 1 30 0
	addi	sp, sp, -16
.LCFI2:
	s32i.n	a0, sp, 12
.LCFI3:
	.loc 1 31 0
	call0	system_get_flash_size_map
.LVL4:
	mov.n	a3, a2
.LVL5:
	movi.n	a2, 0
.LVL6:
	bgeui	a3, 7, .L4
	l32r	a2, .LC1
	addx2	a3, a3, a2
.LVL7:
	l16ui	a2, a3, 0
.L4:
.LVL8:
	.loc 1 59 0
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE1:
	.size	user_rf_cal_sector_set, .-user_rf_cal_sector_set
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"send_code_task"
	.text
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, send_code_task
	.align	4
	.global	user_init
	.type	user_init, @function
user_init:
.LFB2:
	.loc 1 68 0
	addi	sp, sp, -32
.LCFI4:
	.loc 1 70 0
	movi.n	a3, 1
	movi.n	a2, 2
	.loc 1 68 0
	s32i.n	a0, sp, 28
.LCFI5:
	.loc 1 70 0
	call0	ir_remote_init
.LVL9:
	.loc 1 72 0
	movi.n	a5, 0
	l32r	a3, .LC3
	l32r	a2, .LC4
	s32i.n	a5, sp, 4
	s32i.n	a5, sp, 0
	mov.n	a7, a5
	movi.n	a6, 2
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL10:
	.loc 1 73 0
	l32i.n	a0, sp, 28
	addi	sp, sp, 32
	ret.n
.LFE2:
	.size	user_init, .-user_init
	.section	.rodata
	.align	2
	.type	CSWTCH$2, @object
	.size	CSWTCH$2, 14
CSWTCH$2:
	.short	123
	.short	0
	.short	251
	.short	507
	.short	1019
	.short	507
	.short	1019
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdint.h"
	.file 3 "c:/Espressif/ESP8266_RTOS_SDK/include/espressif/c_types.h"
	.file 4 "c:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_system.h"
	.file 5 "c:/Espressif/ESP8266_RTOS_SDK/include/freertos/portmacro.h"
	.file 6 "include/ir_remote.h"
	.file 7 "c:/Espressif/ESP8266_RTOS_SDK/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x51
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.2byte	0x20e
	.4byte	0xde
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x216
	.4byte	0xa6
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x63
	.4byte	0x81
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x8
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8
	.4byte	0x88
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LVL2
	.4byte	0x1f4
	.4byte	0x136
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.4byte	0x5ea1f807
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0x1ff
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1d
	.4byte	0x68
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x188
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1f
	.4byte	0xde
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x20
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x20b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f4
	.uleb128 0xb
	.4byte	.LVL9
	.4byte	0x217
	.4byte	0x1b5
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x222
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	send_code_task
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x32
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.byte	0x1a
	.uleb128 0x13
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x20d
	.uleb128 0x13
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x222
	.uleb128 0x12
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0x12
	.uleb128 0x13
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x5c4
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"xTaskGenericCreate"
.LASF16:
	.string	"FLASH_SIZE_4M_MAP_256_256"
.LASF28:
	.string	"rf_cal_sec"
.LASF24:
	.string	"portTickType"
.LASF18:
	.string	"FLASH_SIZE_8M_MAP_512_512"
.LASF10:
	.string	"double"
.LASF38:
	.string	"user_init"
.LASF17:
	.string	"FLASH_SIZE_2M"
.LASF27:
	.string	"size_map"
.LASF9:
	.string	"float"
.LASF34:
	.string	"GNU C89 5.2.0 -mlongcalls -mtext-section-literals -mno-serialize-volatile -g -Os -std=gnu90 -fno-inline-functions"
.LASF26:
	.string	"user_rf_cal_sector_set"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"C:\\\\Espressif\\\\examples\\\\ESP8266\\\\esp8266-ir-remote"
.LASF21:
	.string	"FLASH_SIZE_16M_MAP_1024_1024"
.LASF8:
	.string	"uint32"
.LASF23:
	.string	"flash_size_map"
.LASF29:
	.string	"ir_remote_send_nec"
.LASF4:
	.string	"unsigned int"
.LASF31:
	.string	"system_get_flash_size_map"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"FLASH_SIZE_32M_MAP_512_512"
.LASF13:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF37:
	.string	"pvParameters"
.LASF32:
	.string	"ir_remote_init"
.LASF35:
	.string	"user/user_main.c"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"FLASH_SIZE_16M_MAP_512_512"
.LASF7:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF30:
	.string	"vTaskDelay"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"send_code_task"
.LASF15:
	.string	"_Bool"
.LASF22:
	.string	"FLASH_SIZE_32M_MAP_1024_1024"
	.ident	"GCC: (GNU) 5.2.0"
