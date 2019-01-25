	.file	1 "4.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.text
	.align	2
	.globl	_Z3funi
$LFB1021 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z3funi
	.type	_Z3funi, @function
_Z3funi:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,48($fp)
	lw	$2,48($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L2
	nop

	li	$2,1			# 0x1
	b	$L3
	nop

$L2:
	lw	$3,48($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L4
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L4:
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L5
	nop

	lw	$2,48($fp)
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mov.d	$f12,$f0
	lw	$2,%call16(sqrt)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	lw	$28,16($fp)
	trunc.w.d $f0,$f0
	mfc1	$2,$f0
	sw	$2,36($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	mul	$3,$3,$2
	lw	$2,48($fp)
	bne	$3,$2,$L6
	nop

	li	$2,2			# 0x2
	b	$L3
	nop

$L6:
	sw	$0,28($fp)
	li	$2,2			# 0x2
	sw	$2,32($fp)
$L9:
	lw	$3,32($fp)
	lw	$2,36($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L7
	nop

	lw	$3,48($fp)
	lw	$2,32($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L8
	nop

	li	$2,2			# 0x2
	b	$L3
	nop

$L8:
	sw	$0,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L9
	nop

$L7:
	lw	$2,28($fp)
	bne	$2,$0,$L10
	nop

	li	$2,3			# 0x3
	b	$L3
	nop

$L10:
	move	$2,$0
	b	$L3
	nop

$L5:
	b	$L1
	nop

$L3:
$L1:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z3funi
	.cfi_endproc
$LFE1021:
	.size	_Z3funi, .-_Z3funi
	.align	2
	.globl	main
$LFB1022 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	li	$2,567			# 0x237
	sw	$2,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	_Z3funi
	nop

	.option	pic2
	li	$3,2			# 0x2
	beq	$2,$3,$L13
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L14
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L12
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L13:
	lw	$4,28($fp)
	.option	pic0
	jal	_Z3funi
	nop

	.option	pic2
	xori	$2,$2,0x3
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	beq	$2,$0,$L14
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L13
	nop

$L14:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L12:
	move	$2,$0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE1022:
	.size	main, .-main
	.align	2
$LFB1023 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$3,32($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L19
	nop

	lw	$3,36($fp)
	li	$2,65535			# 0xffff
	bne	$3,$2,$L19
	nop

	lui	$2,%hi(_ZStL8__ioinit)
	addiu	$4,$2,%lo(_ZStL8__ioinit)
	lw	$2,%call16(_ZNSt8ios_base4InitC1Ev)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_ZNSt8ios_base4InitC1Ev
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi(__dso_handle)
	addiu	$6,$2,%lo(__dso_handle)
	lui	$2,%hi(_ZStL8__ioinit)
	addiu	$5,$2,%lo(_ZStL8__ioinit)
	lw	$4,%got(_ZNSt8ios_base4InitD1Ev)($28)
	lw	$2,%call16(__cxa_atexit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_atexit
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L19:
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z41__static_initialization_and_destruction_0ii
	.cfi_endproc
$LFE1023:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
$LFB1024 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_GLOBAL__sub_I__Z3funi
	.type	_GLOBAL__sub_I__Z3funi, @function
_GLOBAL__sub_I__Z3funi:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	li	$5,65535			# 0xffff
	li	$4,1			# 0x1
	.option	pic0
	jal	_Z41__static_initialization_and_destruction_0ii
	nop

	.option	pic2
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_GLOBAL__sub_I__Z3funi
	.cfi_endproc
$LFE1024:
	.size	_GLOBAL__sub_I__Z3funi, .-_GLOBAL__sub_I__Z3funi
	.section	.ctors,"aw",@progbits
	.align	2
	.word	_GLOBAL__sub_I__Z3funi
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
