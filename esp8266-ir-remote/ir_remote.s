	.file	"ir_remote.c"
	.text
.Ltext0:
	.literal_position
	.literal .LC0, 1610614284
	.literal .LC1, _pwm_enable
	.literal .LC2, _pwm_lvl
	.literal .LC3, _gpio_pin_num
	.literal .LC4, _logic_high
	.literal .LC5, _logic_low
	.literal .LC6, _frc1_ticks
	.literal .LC7, 1610614272
	.align	4
	.global	pwm_tim1_intr_handler
	.type	pwm_tim1_intr_handler, @function
pwm_tim1_intr_handler:
.LFB1:
	.file 1 "user/ir_remote.c"
	.loc 1 32 0
	.loc 1 33 0
	l32r	a3, .LC0
	.loc 1 32 0
	addi	sp, sp, -16
.LCFI0:
	.loc 1 33 0
	l32i.n	a4, a3, 0
	movi.n	a2, -2
	.loc 1 32 0
	s32i.n	a12, sp, 8
	.loc 1 33 0
	and	a2, a4, a2
	.loc 1 32 0
	s32i.n	a0, sp, 12
	s32i.n	a13, sp, 4
.LCFI1:
	.loc 1 33 0
	s32i.n	a2, a3, 0
	.loc 1 35 0
	l32r	a2, .LC1
	l32r	a12, .LC2
	l8ui	a5, a2, 0
	extui	a5, a5, 0, 8
	beqz.n	a5, .L2
	.loc 1 37 0
	l8ui	a6, a12, 0
	l32r	a2, .LC3
	l8ui	a3, a12, 0
	l16ui	a2, a2, 0
	movi.n	a13, 1
	extui	a3, a3, 0, 8
	extui	a6, a6, 0, 8
	xor	a3, a3, a13
	ssl	a2
	sll	a4, a13
	ssl	a2
	sll	a3, a3
	movi.n	a5, 0
	ssl	a2
	sll	a2, a6
	call0	gpio_output_conf
.LVL0:
	.loc 1 38 0
	l8ui	a2, a12, 0
	extui	a2, a2, 0, 8
	xor	a13, a2, a13
	s8i	a13, a12, 0
	j	.L3
.L2:
	.loc 1 40 0
	l32r	a3, .LC4
	l8ui	a2, a12, 0
	l8ui	a3, a3, 0
	extui	a2, a2, 0, 8
	bne	a3, a2, .L3
	.loc 1 42 0
	l32r	a2, .LC5
	.loc 1 43 0
	movi.n	a4, 1
	.loc 1 42 0
	l8ui	a2, a2, 0
	s8i	a2, a12, 0
	.loc 1 43 0
	l8ui	a6, a12, 0
	l32r	a2, .LC3
	l8ui	a3, a12, 0
	l16ui	a2, a2, 0
	extui	a3, a3, 0, 8
	xor	a3, a3, a4
	extui	a6, a6, 0, 8
	ssl	a2
	sll	a4, a4
	ssl	a2
	sll	a3, a3
	ssl	a2
	sll	a2, a6
	call0	gpio_output_conf
.LVL1:
.L3:
	.loc 1 46 0
	l32r	a2, .LC6
	.loc 1 47 0
	l32i.n	a0, sp, 12
	.loc 1 46 0
	l32i.n	a3, a2, 0
	l32r	a2, .LC7
	.loc 1 47 0
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 4
	.loc 1 46 0
	s32i.n	a3, a2, 0
	.loc 1 47 0
	addi	sp, sp, 16
	ret.n
.LFE1:
	.size	pwm_tim1_intr_handler, .-pwm_tim1_intr_handler
	.literal_position
	.align	4
	.type	delay, @function
delay:
.LFB0:
	.loc 1 26 0
.LVL2:
	addi	sp, sp, -16
.LCFI2:
	s32i.n	a12, sp, 8
	s32i.n	a13, sp, 4
	s32i.n	a0, sp, 12
.LCFI3:
	.loc 1 26 0
	mov.n	a12, a2
	.loc 1 27 0
	call0	system_get_time
.LVL3:
	mov.n	a13, a2
.LVL4:
	.loc 1 28 0
	j	.L5
.LVL5:
.L6:
	.loc 1 28 0 is_stmt 0 discriminator 2
#APP
# 28 "user/ir_remote.c" 1
	nop
# 0 "" 2
#NO_APP
.L5:
	.loc 1 28 0 discriminator 1
	call0	system_get_time
.LVL6:
	sub	a2, a2, a13
	bltu	a2, a12, .L6
	.loc 1 29 0 is_stmt 1
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 4
.LVL7:
	addi	sp, sp, 16
	ret.n
.LFE0:
	.size	delay, .-delay
	.literal_position
	.literal .LC8, _pwm_enable
	.align	4
	.type	mark, @function
mark:
.LFB2:
	.loc 1 50 0
.LVL8:
	addi	sp, sp, -16
.LCFI4:
	.loc 1 51 0
	l32r	a3, .LC8
	.loc 1 50 0
	s32i.n	a0, sp, 12
.LCFI5:
	.loc 1 51 0
	movi.n	a4, 1
	s8i	a4, a3, 0
	.loc 1 53 0
	beqz.n	a2, .L7
	.loc 1 53 0 is_stmt 0 discriminator 1
	call0	delay
.LVL9:
.L7:
	.loc 1 54 0 is_stmt 1
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE2:
	.size	mark, .-mark
	.literal_position
	.literal .LC9, _pwm_enable
	.align	4
	.type	space, @function
space:
.LFB3:
	.loc 1 57 0
.LVL10:
	addi	sp, sp, -16
.LCFI6:
	.loc 1 58 0
	l32r	a3, .LC9
	.loc 1 57 0
	s32i.n	a0, sp, 12
.LCFI7:
	.loc 1 58 0
	movi.n	a4, 0
	s8i	a4, a3, 0
	.loc 1 60 0
	beqz.n	a2, .L12
	.loc 1 60 0 is_stmt 0 discriminator 1
	call0	delay
.LVL11:
.L12:
	.loc 1 61 0 is_stmt 1
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE3:
	.size	space, .-space
	.literal_position
	.literal .LC10, _gpio_pin_num
	.literal .LC11, _logic_low
	.literal .LC12, _logic_high
	.literal .LC13, _pwm_lvl
	.literal .LC14, pwm_tim1_intr_handler
	.literal .LC15, 1072693252
	.literal .LC16, 1610614284
	.literal .LC17, 1610614280
	.literal .LC18, 1610614272
	.align	4
	.global	ir_remote_init
	.type	ir_remote_init, @function
ir_remote_init:
.LFB5:
	.loc 1 74 0
.LVL12:
	addi	sp, sp, -48
.LCFI8:
	.loc 1 75 0
	l32r	a4, .LC10
	.loc 1 74 0
	s32i.n	a0, sp, 44
	s32i.n	a12, sp, 40
	s32i.n	a13, sp, 36
	s32i.n	a14, sp, 32
	s32i.n	a15, sp, 28
.LCFI9:
	.loc 1 74 0
	extui	a2, a2, 0, 16
	.loc 1 75 0
	s16i	a2, a4, 0
	.loc 1 77 0
	l32r	a4, .LC11
	.loc 1 74 0
	extui	a3, a3, 0, 8
	.loc 1 77 0
	s8i	a3, a4, 0
	.loc 1 78 0
	movi.n	a12, 1
	l32r	a4, .LC12
	xor	a5, a3, a12
	.loc 1 82 0
	movi.n	a15, 1
	.loc 1 78 0
	s8i	a5, a4, 0
	.loc 1 82 0
	ssl	a2
	sll	a2, a15
.LVL13:
	.loc 1 79 0
	l32r	a4, .LC13
	.loc 1 84 0
	movi.n	a13, 0
	.loc 1 82 0
	s16i	a2, sp, 0
	.loc 1 83 0
	movi.n	a14, 2
	.loc 1 85 0
	mov.n	a2, sp
	.loc 1 79 0
	s8i	a3, a4, 0
	.loc 1 83 0
	s32i.n	a14, sp, 4
	.loc 1 84 0
	s32i.n	a13, sp, 8
	.loc 1 85 0
	call0	gpio_config
.LVL14:
	.loc 1 87 0
	l32r	a2, .LC11
	l32r	a3, .LC10
	l8ui	a7, a2, 0
	l16ui	a2, a3, 0
	xor	a3, a7, a12
	extui	a3, a3, 0, 8
	mov.n	a5, a13
	ssl	a2
	sll	a4, a15
	ssl	a2
	sll	a3, a3
	ssl	a2
	sll	a2, a7
	call0	gpio_output_conf
.LVL15:
	.loc 1 89 0
	call0	vPortEnterCritical
.LVL16:
	.loc 1 90 0
	l32r	a3, .LC14
	mov.n	a4, a13
	movi.n	a2, 9
	call0	_xt_isr_attach
.LVL17:
	.loc 1 91 0
	l32r	a2, .LC15
	l32i.n	a3, a2, 0
	or	a6, a3, a14
	s32i.n	a6, a2, 0
	.loc 1 92 0
	movi	a2, 0x200
	call0	_xt_isr_unmask
.LVL18:
	.loc 1 94 0
	l32r	a3, .LC16
	movi.n	a2, -2
	l32i.n	a4, a3, 0
	and	a2, a4, a2
	s32i.n	a2, a3, 0
	.loc 1 95 0
	l32r	a2, .LC17
	movi	a3, 0x88
	s32i.n	a3, a2, 0
	.loc 1 96 0
	l32r	a2, .LC18
	s32i.n	a13, a2, 0
	.loc 1 97 0
	call0	vPortExitCritical
.LVL19:
	.loc 1 98 0
	l32i.n	a0, sp, 44
	l32i.n	a12, sp, 40
	l32i.n	a13, sp, 36
	l32i.n	a14, sp, 32
	l32i.n	a15, sp, 28
	addi	sp, sp, 48
	ret.n
.LFE5:
	.size	ir_remote_init, .-ir_remote_init
	.literal_position
	.literal .LC19, _frc1_ticks
	.literal .LC20, 1610614272
	.literal .LC21, 9000
	.literal .LC22, 4500
	.align	4
	.global	ir_remote_send_nec
	.type	ir_remote_send_nec, @function
ir_remote_send_nec:
.LFB6:
	.loc 1 101 0
.LVL20:
	addi	sp, sp, -16
.LCFI10:
	s32i.n	a13, sp, 4
.LCFI11:
	mov.n	a13, a2
.LBB4:
.LBB5:
	.loc 1 66 0
	l32r	a2, .LC19
.LVL21:
.LBE5:
.LBE4:
	.loc 1 101 0
	s32i.n	a14, sp, 0
.LCFI12:
	extui	a14, a3, 0, 8
.LBB8:
.LBB6:
	.loc 1 66 0
	l32i.n	a3, a2, 0
.LVL22:
.LBE6:
.LBE8:
	.loc 1 101 0
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
.LCFI13:
.LBB9:
.LBB7:
	.loc 1 66 0
	beqi	a3, 8, .L19
	.loc 1 68 0
	l32r	a4, .LC20
	movi.n	a3, 8
	s32i.n	a3, a4, 0
	.loc 1 69 0
	s32i.n	a3, a2, 0
.L19:
.LBE7:
.LBE9:
	.loc 1 104 0
	l32r	a2, .LC21
	.loc 1 108 0
	movi.n	a12, 0
	.loc 1 104 0
	call0	mark
.LVL23:
	.loc 1 105 0
	l32r	a2, .LC22
	call0	space
.LVL24:
	.loc 1 108 0
	j	.L20
.LVL25:
.L23:
	.loc 1 110 0
	bgez	a13, .L21
	.loc 1 112 0
	call0	mark
.LVL26:
	.loc 1 113 0
	movi	a2, 0x697
	j	.L27
.L21:
	.loc 1 117 0
	call0	mark
.LVL27:
	.loc 1 118 0
	movi	a2, 0x232
.L27:
	.loc 1 108 0
	addi.n	a12, a12, 1
.LVL28:
	.loc 1 118 0
	call0	space
.LVL29:
	.loc 1 120 0
	slli	a13, a13, 1
.LVL30:
	.loc 1 108 0
	extui	a12, a12, 0, 8
.LVL31:
.L20:
	.loc 1 112 0 discriminator 1
	movi	a2, 0x232
	.loc 1 108 0 discriminator 1
	bne	a12, a14, .L23
	.loc 1 122 0
	call0	mark
.LVL32:
	.loc 1 123 0
	movi.n	a2, 0
	call0	space
.LVL33:
	.loc 1 124 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
.LVL34:
	l32i.n	a13, sp, 4
.LVL35:
	l32i.n	a14, sp, 0
.LVL36:
	addi	sp, sp, 16
	ret.n
.LFE6:
	.size	ir_remote_send_nec, .-ir_remote_send_nec
	.literal_position
	.literal .LC23, _frc1_ticks
	.literal .LC24, 1610614272
	.literal .LC25, 3502
	.align	4
	.global	ir_remote_send_panasonic
	.type	ir_remote_send_panasonic, @function
ir_remote_send_panasonic:
.LFB7:
	.loc 1 127 0
.LVL37:
	addi	sp, sp, -16
.LCFI14:
	s32i.n	a14, sp, 0
.LCFI15:
	extui	a14, a2, 0, 16
.LBB12:
.LBB13:
	.loc 1 66 0
	l32r	a2, .LC23
.LVL38:
.LBE13:
.LBE12:
	.loc 1 127 0
	s32i.n	a13, sp, 4
.LCFI16:
	mov.n	a13, a3
.LBB16:
.LBB14:
	.loc 1 66 0
	l32i.n	a3, a2, 0
.LVL39:
.LBE14:
.LBE16:
	.loc 1 127 0
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
.LCFI17:
.LBB17:
.LBB15:
	.loc 1 66 0
	beqi	a3, 8, .L29
	.loc 1 68 0
	l32r	a4, .LC24
	movi.n	a3, 8
	s32i.n	a3, a4, 0
	.loc 1 69 0
	s32i.n	a3, a2, 0
.L29:
.LBE15:
.LBE17:
	.loc 1 130 0
	l32r	a2, .LC25
	.loc 1 131 0
	movi.n	a12, 0x10
	.loc 1 130 0
	call0	mark
.LVL40:
	.loc 1 131 0
	movi	a2, 0x6d6
	call0	space
.LVL41:
.L32:
	.loc 1 136 0
	movi	a2, 0x1f6
	call0	mark
.LVL42:
	.loc 1 137 0
	slli	a2, a14, 16
	bgez	a2, .L30
	.loc 1 139 0
	movi	a2, 0x4dc
	j	.L41
.L30:
	.loc 1 143 0
	movi	a2, 0x190
.L41:
	addi.n	a12, a12, -1
.LVL43:
	.loc 1 145 0
	slli	a14, a14, 1
.LVL44:
	extui	a12, a12, 0, 8
.LVL45:
	.loc 1 143 0
	call0	space
.LVL46:
	.loc 1 145 0
	extui	a14, a14, 0, 16
.LVL47:
	.loc 1 134 0
	bnez.n	a12, .L32
	movi.n	a12, 0x20
.L35:
.LVL48:
	.loc 1 149 0
	movi	a2, 0x1f6
	call0	mark
.LVL49:
	.loc 1 152 0
	movi	a2, 0x4dc
	.loc 1 150 0
	bltz	a13, .L42
.L33:
	.loc 1 156 0
	movi	a2, 0x190
.L42:
	addi.n	a12, a12, -1
.LVL50:
	extui	a12, a12, 0, 8
.LVL51:
	call0	space
.LVL52:
	.loc 1 158 0
	slli	a13, a13, 1
.LVL53:
	.loc 1 147 0
	bnez.n	a12, .L35
	.loc 1 160 0
	movi	a2, 0x1f6
	call0	mark
.LVL54:
	.loc 1 161 0
	mov.n	a2, a12
	call0	space
.LVL55:
	.loc 1 162 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 4
.LVL56:
	l32i.n	a14, sp, 0
.LVL57:
	addi	sp, sp, 16
	ret.n
.LFE7:
	.size	ir_remote_send_panasonic, .-ir_remote_send_panasonic
	.literal_position
	.literal .LC26, _frc1_ticks
	.literal .LC27, 1610614272
	.literal .LC28, 2400
	.align	4
	.global	ir_remote_send_sony
	.type	ir_remote_send_sony, @function
ir_remote_send_sony:
.LFB8:
	.loc 1 165 0
.LVL58:
	addi	sp, sp, -16
.LCFI18:
	s32i.n	a12, sp, 8
.LCFI19:
	mov.n	a12, a2
.LBB20:
.LBB21:
	.loc 1 66 0
	l32r	a2, .LC26
.LVL59:
.LBE21:
.LBE20:
	.loc 1 165 0
	s32i.n	a14, sp, 0
.LCFI20:
	extui	a14, a3, 0, 8
.LBB24:
.LBB22:
	.loc 1 66 0
	l32i.n	a3, a2, 0
.LVL60:
.LBE22:
.LBE24:
	.loc 1 165 0
	s32i.n	a0, sp, 12
	s32i.n	a13, sp, 4
.LCFI21:
.LBB25:
.LBB23:
	.loc 1 66 0
	beqi	a3, 7, .L44
	.loc 1 68 0
	l32r	a4, .LC27
	movi.n	a3, 7
	s32i.n	a3, a4, 0
	.loc 1 69 0
	s32i.n	a3, a2, 0
.L44:
.LBE23:
.LBE25:
	.loc 1 168 0
	l32r	a2, .LC28
	.loc 1 171 0
	neg	a13, a14
	.loc 1 168 0
	call0	mark
.LVL61:
	.loc 1 169 0
	movi	a2, 0x258
	.loc 1 171 0
	ssl	a13
	sll	a13, a12
	.loc 1 169 0
	call0	space
.LVL62:
	.loc 1 174 0
	movi.n	a12, 0
	j	.L45
.LVL63:
.L48:
	.loc 1 178 0
	movi	a2, 0x4b0
	.loc 1 176 0
	bltz	a13, .L52
.L46:
	.loc 1 183 0
	movi	a2, 0x258
.L52:
	call0	mark
.LVL64:
	.loc 1 184 0
	movi	a2, 0x258
	.loc 1 174 0
	addi.n	a12, a12, 1
.LVL65:
	.loc 1 184 0
	call0	space
.LVL66:
	.loc 1 186 0
	slli	a13, a13, 1
.LVL67:
	.loc 1 174 0
	extui	a12, a12, 0, 8
.LVL68:
.L45:
	.loc 1 174 0 is_stmt 0 discriminator 1
	bne	a12, a14, .L48
	.loc 1 188 0 is_stmt 1
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
.LVL69:
	l32i.n	a13, sp, 4
.LVL70:
	l32i.n	a14, sp, 0
.LVL71:
	addi	sp, sp, 16
	ret.n
.LFE8:
	.size	ir_remote_send_sony, .-ir_remote_send_sony
	.literal_position
	.literal .LC29, _frc1_ticks
	.literal .LC30, 1610614272
	.literal .LC31, 5000
	.align	4
	.global	ir_remote_send_samsung
	.type	ir_remote_send_samsung, @function
ir_remote_send_samsung:
.LFB9:
	.loc 1 191 0
.LVL72:
	addi	sp, sp, -16
.LCFI22:
	s32i.n	a13, sp, 4
.LCFI23:
	mov.n	a13, a2
.LBB28:
.LBB29:
	.loc 1 66 0
	l32r	a2, .LC29
.LVL73:
.LBE29:
.LBE28:
	.loc 1 191 0
	s32i.n	a14, sp, 0
.LCFI24:
	extui	a14, a3, 0, 8
.LBB32:
.LBB30:
	.loc 1 66 0
	l32i.n	a3, a2, 0
.LVL74:
.LBE30:
.LBE32:
	.loc 1 191 0
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
.LCFI25:
.LBB33:
.LBB31:
	.loc 1 66 0
	beqi	a3, 8, .L54
	.loc 1 68 0
	l32r	a4, .LC30
	movi.n	a3, 8
	s32i.n	a3, a4, 0
	.loc 1 69 0
	s32i.n	a3, a2, 0
.L54:
.LBE31:
.LBE33:
	.loc 1 194 0
	l32r	a12, .LC31
	mov.n	a2, a12
	call0	mark
.LVL75:
	.loc 1 195 0
	mov.n	a2, a12
	call0	space
.LVL76:
	.loc 1 198 0
	movi.n	a12, 0
	j	.L55
.LVL77:
.L58:
	.loc 1 200 0
	bgez	a13, .L56
	.loc 1 202 0
	call0	mark
.LVL78:
	.loc 1 203 0
	movi	a2, 0x640
	j	.L62
.L56:
	.loc 1 207 0
	call0	mark
.LVL79:
	.loc 1 208 0
	movi	a2, 0x230
.L62:
	.loc 1 198 0
	addi.n	a12, a12, 1
.LVL80:
	.loc 1 208 0
	call0	space
.LVL81:
	.loc 1 210 0
	slli	a13, a13, 1
.LVL82:
	.loc 1 198 0
	extui	a12, a12, 0, 8
.LVL83:
.L55:
	.loc 1 202 0 discriminator 1
	movi	a2, 0x230
	.loc 1 198 0 discriminator 1
	bne	a12, a14, .L58
	.loc 1 212 0
	call0	mark
.LVL84:
	.loc 1 213 0
	movi.n	a2, 0
	call0	space
.LVL85:
	.loc 1 214 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
.LVL86:
	l32i.n	a13, sp, 4
.LVL87:
	l32i.n	a14, sp, 0
.LVL88:
	addi	sp, sp, 16
	ret.n
.LFE9:
	.size	ir_remote_send_samsung, .-ir_remote_send_samsung
	.literal_position
	.literal .LC34, _frc1_ticks
	.literal .LC35, 1610614272
	.align	4
	.global	ir_remote_send_raw
	.type	ir_remote_send_raw, @function
ir_remote_send_raw:
.LFB10:
	.loc 1 217 0
.LVL89:
	addi	sp, sp, -16
.LCFI26:
	s32i.n	a14, sp, 0
.LCFI27:
	extui	a14, a3, 0, 16
.LBB36:
.LBB37:
	.loc 1 66 0
	l32r	a3, .LC34
.LVL90:
.LBE37:
.LBE36:
	.loc 1 217 0
	s32i.n	a0, sp, 12
.LBB40:
.LBB38:
	.loc 1 66 0
	l32i.n	a4, a3, 0
.LVL91:
.LBE38:
.LBE40:
	.loc 1 217 0
	s32i.n	a12, sp, 8
	s32i.n	a13, sp, 4
.LCFI28:
.LBB41:
.LBB39:
	.loc 1 66 0
	beqi	a4, 7, .L64
	.loc 1 68 0
	l32r	a5, .LC35
	movi.n	a4, 7
	s32i.n	a4, a5, 0
	.loc 1 69 0
	s32i.n	a4, a3, 0
.L64:
	mov.n	a13, a2
.LBE39:
.LBE41:
	.loc 1 217 0 discriminator 1
	movi.n	a12, 0
	j	.L65
.LVL92:
.L68:
	.loc 1 225 0
	l16ui	a2, a13, 0
	.loc 1 223 0
	bbci	a12, 0, .L66
	.loc 1 225 0
	call0	space
.LVL93:
	j	.L67
.L66:
	.loc 1 229 0
	call0	mark
.LVL94:
.L67:
	.loc 1 221 0 discriminator 2
	addi.n	a12, a12, 1
.LVL95:
	extui	a12, a12, 0, 16
.LVL96:
	addi.n	a13, a13, 2
.LVL97:
.L65:
	.loc 1 221 0 is_stmt 0 discriminator 1
	bne	a12, a14, .L68
	.loc 1 232 0 is_stmt 1
	movi.n	a2, 0
	call0	space
.LVL98:
	.loc 1 233 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
.LVL99:
	l32i.n	a13, sp, 4
	l32i.n	a14, sp, 0
.LVL100:
	addi	sp, sp, 16
	ret.n
.LFE10:
	.size	ir_remote_send_raw, .-ir_remote_send_raw
	.local	_pwm_lvl
	.comm	_pwm_lvl,1,1
	.local	_pwm_enable
	.comm	_pwm_enable,1,1
	.local	_logic_low
	.comm	_logic_low,1,1
	.local	_logic_high
	.comm	_logic_high,1,1
	.local	_gpio_pin_num
	.comm	_gpio_pin_num,2,2
	.local	_frc1_ticks
	.comm	_frc1_ticks,4,4
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x8c
	.uleb128 0x2
	.byte	0x80
	.uleb128 0x1
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI2-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI8-.LFB5
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x5
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI10-.LFB6
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI14-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI18-.LFB8
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x80
	.uleb128 0x1
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI22-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI26-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdint.h"
	.file 3 "c:/Espressif/ESP8266_RTOS_SDK/include/espressif/c_types.h"
	.file 4 "include/gpio.h"
	.file 5 "c:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_system.h"
	.file 6 "c:/Espressif/ESP8266_RTOS_SDK/include/freertos/portmacro.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x1
	.4byte	.LASF71
	.4byte	.LASF72
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x51
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69
	.byte	0x4
	.byte	0x45
	.4byte	0xf6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4c
	.4byte	0xc5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69
	.byte	0x4
	.byte	0x4e
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x53
	.4byte	0x101
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69
	.byte	0x4
	.byte	0x55
	.4byte	0x14a
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x58
	.4byte	0x131
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.byte	0x5a
	.4byte	0x18e
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5b
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5c
	.4byte	0x126
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5d
	.4byte	0x14a
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5e
	.4byte	0xf6
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5f
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x7a0
	.4byte	0x1c1
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x7a0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x19
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x210
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x19
	.4byte	0x45
	.4byte	.LLST0
	.uleb128 0xf
	.string	"t1"
	.byte	0x1
	.byte	0x1b
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x7ab
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0x7ab
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x31
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x31
	.4byte	0x45
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LVL9
	.4byte	0x1cb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x38
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26c
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x38
	.4byte	0x45
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x1cb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x49
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x330
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x49
	.4byte	0xbe
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x51
	.4byte	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x55
	.4byte	0x57
	.4byte	0x2be
	.uleb128 0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LVL14
	.4byte	0x7b6
	.4byte	0x2d2
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL15
	.4byte	0x7a0
	.4byte	0x2e6
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x7c1
	.uleb128 0xa
	.4byte	.LVL17
	.4byte	0x7cc
	.4byte	0x311
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm_tim1_intr_handler
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL18
	.4byte	0x7d7
	.4byte	0x326
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0xc
	.4byte	.LVL19
	.4byte	0x7e2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	0x353
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.byte	0x3f
	.4byte	0x45
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0x41
	.4byte	0x5e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x64
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x425
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x64
	.4byte	0x5e
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x64
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	0x330
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.4byte	0x3bb
	.uleb128 0x18
	.4byte	0x33c
	.sleb128 -27136
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL23
	.4byte	0x210
	.4byte	0x3d0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2328
	.byte	0
	.uleb128 0xa
	.4byte	.LVL24
	.4byte	0x23e
	.4byte	0x3e5
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1194
	.byte	0
	.uleb128 0xc
	.4byte	.LVL26
	.4byte	0x210
	.uleb128 0xc
	.4byte	.LVL27
	.4byte	0x210
	.uleb128 0xc
	.4byte	.LVL29
	.4byte	0x23e
	.uleb128 0xa
	.4byte	.LVL32
	.4byte	0x210
	.4byte	0x415
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x232
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0x23e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x519
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7e
	.4byte	0x45
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7e
	.4byte	0x5e
	.4byte	.LLST10
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x85
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	0x330
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x80
	.4byte	0x48d
	.uleb128 0x18
	.4byte	0x33c
	.sleb128 -30536
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL40
	.4byte	0x210
	.4byte	0x4a2
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0xdae
	.byte	0
	.uleb128 0xa
	.4byte	.LVL41
	.4byte	0x23e
	.4byte	0x4b7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6d6
	.byte	0
	.uleb128 0xa
	.4byte	.LVL42
	.4byte	0x210
	.4byte	0x4cc
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL46
	.4byte	0x23e
	.uleb128 0xa
	.4byte	.LVL49
	.4byte	0x210
	.4byte	0x4ea
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL52
	.4byte	0x23e
	.uleb128 0xa
	.4byte	.LVL54
	.4byte	0x210
	.4byte	0x508
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0x23e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c6
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa4
	.4byte	0x5e
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa4
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x2c
	.4byte	.LLST14
	.uleb128 0x17
	.4byte	0x330
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xa6
	.4byte	0x581
	.uleb128 0x18
	.4byte	0x33c
	.sleb128 -25536
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL61
	.4byte	0x210
	.4byte	0x596
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x960
	.byte	0
	.uleb128 0xa
	.4byte	.LVL62
	.4byte	0x23e
	.4byte	0x5ab
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x258
	.byte	0
	.uleb128 0xc
	.4byte	.LVL64
	.4byte	0x210
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0x23e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x258
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0xbe
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x696
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0xbe
	.4byte	0x5e
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0xbe
	.4byte	0x2c
	.4byte	.LLST16
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	0x330
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xc0
	.4byte	0x62e
	.uleb128 0x18
	.4byte	0x33c
	.sleb128 -27136
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL75
	.4byte	0x210
	.4byte	0x642
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL76
	.4byte	0x23e
	.4byte	0x656
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL78
	.4byte	0x210
	.uleb128 0xc
	.4byte	.LVL79
	.4byte	0x210
	.uleb128 0xc
	.4byte	.LVL81
	.4byte	0x23e
	.uleb128 0xa
	.4byte	.LVL84
	.4byte	0x210
	.4byte	0x686
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x230
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x23e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72f
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0xd8
	.4byte	0x72f
	.4byte	.LLST18
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0xd8
	.4byte	0x45
	.4byte	.LLST19
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd8
	.4byte	0x45
	.4byte	.LLST20
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xdc
	.4byte	0x45
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	0x330
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xda
	.4byte	0x70d
	.uleb128 0x18
	.4byte	0x33c
	.sleb128 -25536
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL93
	.4byte	0x23e
	.uleb128 0xc
	.4byte	.LVL94
	.4byte	0x210
	.uleb128 0x1b
	.4byte	.LVL98
	.4byte	0x23e
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.4byte	0x45
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.byte	0x11
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	_frc1_ticks
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x12
	.4byte	0x45
	.uleb128 0x5
	.byte	0x3
	.4byte	_gpio_pin_num
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x14
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	_logic_high
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x14
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	_logic_low
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x16
	.4byte	0x78a
	.uleb128 0x5
	.byte	0x3
	.4byte	_pwm_enable
	.uleb128 0x1e
	.4byte	0xbe
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x17
	.4byte	0x78a
	.uleb128 0x5
	.byte	0x3
	.4byte	_pwm_lvl
	.uleb128 0x1f
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x4
	.byte	0x72
	.uleb128 0x1f
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0x96
	.uleb128 0x1f
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x8a
	.uleb128 0x1f
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0xbb
	.uleb128 0x1f
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0xb3
	.uleb128 0x1f
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x8b
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x5
	.byte	0x40
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x5
	.byte	0x40
	.byte	0x7c
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x7c
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x5c
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"ir_remote_send_nec"
.LASF76:
	.string	"ticks"
.LASF34:
	.string	"GPIO_Pin"
.LASF63:
	.string	"gpio_output_conf"
.LASF38:
	.string	"GPIO_ConfigTypeDef"
.LASF65:
	.string	"gpio_config"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"sizetype"
.LASF47:
	.string	"ir_remote_init"
.LASF45:
	.string	"invert_logic_level"
.LASF32:
	.string	"GPIO_PullUp_EN"
.LASF61:
	.string	"_pwm_enable"
.LASF39:
	.string	"delay"
.LASF72:
	.string	"C:\\\\Espressif\\\\examples\\\\ESP8266\\\\esp8266-ir-remote"
.LASF41:
	.string	"delay_us"
.LASF25:
	.string	"GPIO_INT_TYPE"
.LASF58:
	.string	"_gpio_pin_num"
.LASF10:
	.string	"uint16"
.LASF3:
	.string	"uint8_t"
.LASF27:
	.string	"GPIO_Mode_Out_OD"
.LASF19:
	.string	"GPIO_PIN_INTR_DISABLE"
.LASF50:
	.string	"nbits"
.LASF12:
	.string	"float"
.LASF75:
	.string	"freq"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"long int"
.LASF24:
	.string	"GPIO_PIN_INTR_HILEVEL"
.LASF36:
	.string	"GPIO_Pullup"
.LASF33:
	.string	"GPIO_Pullup_IF"
.LASF54:
	.string	"ir_remote_send_samsung"
.LASF29:
	.string	"GPIO_Mode_Sigma_Delta"
.LASF40:
	.string	"mark"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"space"
.LASF26:
	.string	"GPIO_Mode_Input"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"freq_hz"
.LASF52:
	.string	"address"
.LASF74:
	.string	"set_carrier_frequence"
.LASF22:
	.string	"GPIO_PIN_INTR_ANYEGDE"
.LASF55:
	.string	"ir_remote_send_raw"
.LASF71:
	.string	"user/ir_remote.c"
.LASF42:
	.string	"time"
.LASF46:
	.string	"gpioCfg"
.LASF5:
	.string	"short unsigned int"
.LASF66:
	.string	"vPortEnterCritical"
.LASF17:
	.string	"char"
.LASF18:
	.string	"_Bool"
.LASF57:
	.string	"_frc1_ticks"
.LASF64:
	.string	"system_get_time"
.LASF31:
	.string	"GPIO_PullUp_DIS"
.LASF69:
	.string	"vPortExitCritical"
.LASF49:
	.string	"data"
.LASF20:
	.string	"GPIO_PIN_INTR_POSEDGE"
.LASF73:
	.string	"pwm_tim1_intr_handler"
.LASF62:
	.string	"_pwm_lvl"
.LASF59:
	.string	"_logic_high"
.LASF6:
	.string	"uint32_t"
.LASF11:
	.string	"uint32"
.LASF14:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF67:
	.string	"_xt_isr_attach"
.LASF4:
	.string	"uint16_t"
.LASF60:
	.string	"_logic_low"
.LASF28:
	.string	"GPIO_Mode_Output"
.LASF23:
	.string	"GPIO_PIN_INTR_LOLEVEL"
.LASF51:
	.string	"ir_remote_send_panasonic"
.LASF30:
	.string	"GPIOMode_TypeDef"
.LASF7:
	.string	"unsigned int"
.LASF37:
	.string	"GPIO_IntrType"
.LASF53:
	.string	"ir_remote_send_sony"
.LASF70:
	.string	"GNU C89 5.2.0 -mlongcalls -mtext-section-literals -mno-serialize-volatile -g -Os -std=gnu90 -fno-inline-functions"
.LASF44:
	.string	"gpio_pin_num"
.LASF35:
	.string	"GPIO_Mode"
.LASF21:
	.string	"GPIO_PIN_INTR_NEGEDGE"
.LASF68:
	.string	"_xt_isr_unmask"
	.ident	"GCC: (GNU) 5.2.0"
