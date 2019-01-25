	.file	1 "3.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.globl	P
	.section	.bss,"aw",@nobits
	.align	2
	.type	P, @object
	.size	P, 400
P:
	.space	400
	.globl	i
	.data
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.word	-1
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
	lw	$3,48($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L2
	nop

	lw	$3,48($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L3
	nop

$L2:
	lui	$2,%hi(i)
	lw	$2,%lo(i)($2)
	addiu	$3,$2,1
	lui	$2,%hi(i)
	sw	$3,%lo(i)($2)
	lui	$2,%hi(i)
	lw	$3,%lo(i)($2)
	lui	$2,%hi(P)
	sll	$3,$3,2
	addiu	$2,$2,%lo(P)
	addu	$2,$3,$2
	lw	$3,48($fp)
	sw	$3,0($2)
$L3:
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
	bne	$3,$2,$L4
	nop

	move	$2,$0
	b	$L5
	nop

$L4:
	sw	$0,28($fp)
	li	$2,2			# 0x2
	sw	$2,32($fp)
$L8:
	lw	$3,32($fp)
	lw	$2,36($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L6
	nop

	lw	$3,48($fp)
	lw	$2,32($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L7
	nop

	move	$2,$0
	b	$L5
	nop

$L7:
	sw	$0,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L8
	nop

$L6:
	lw	$2,28($fp)
	bne	$2,$0,$L9
	nop

	lui	$2,%hi(i)
	lw	$2,%lo(i)($2)
	addiu	$3,$2,1
	lui	$2,%hi(i)
	sw	$3,%lo(i)($2)
	lui	$2,%hi(i)
	lw	$3,%lo(i)($2)
	lui	$2,%hi(P)
	sll	$3,$3,2
	addiu	$2,$2,%lo(P)
	addu	$2,$3,$2
	lw	$3,48($fp)
	sw	$3,0($2)
	li	$2,1			# 0x1
	b	$L5
	nop

$L9:
	move	$2,$0
$L5:
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
	.frame	$fp,448,$31		# vars= 416, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-448
	.cfi_def_cfa_offset 448
	sw	$31,444($sp)
	sw	$fp,440($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,436($fp)
	sw	$0,28($fp)
	li	$2,2			# 0x2
	sw	$2,32($fp)
$L15:
	lw	$2,32($fp)
	slt	$2,$2,1001
	beq	$2,$0,$L11
	nop

$L14:
	lw	$2,28($fp)
	slt	$2,$2,101
	beq	$2,$0,$L12
	nop

	lw	$4,32($fp)
	.option	pic0
	jal	_Z3funi
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L14
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L14
	nop

$L12:
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L15
	nop

$L11:
	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,436($fp)
	lw	$3,0($3)
	beq	$4,$3,$L17
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L17:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,444($sp)
	lw	$fp,440($sp)
	addiu	$sp,$sp,448
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
	bne	$3,$2,$L20
	nop

	lw	$3,36($fp)
	li	$2,65535			# 0xffff
	bne	$3,$2,$L20
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
$L20:
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
	.ent	_GLOBAL__sub_I_P
	.type	_GLOBAL__sub_I_P, @function
_GLOBAL__sub_I_P:
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
	.end	_GLOBAL__sub_I_P
	.cfi_endproc
$LFE1024:
	.size	_GLOBAL__sub_I_P, .-_GLOBAL__sub_I_P
	.section	.ctors,"aw",@progbits
	.align	2
	.word	_GLOBAL__sub_I_P
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
