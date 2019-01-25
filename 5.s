	.file	1 "5.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.word	1
	.word	12
	.word	9
	.word	1
	.word	4
	.word	5
	.word	0
	.word	78
	.word	9
	.align	2
$LC1:
	.word	10
	.word	125
	.word	94
	.word	12
	.word	45
	.word	50
	.word	40
	.word	7
	.word	90
	.text
	.align	2
	.globl	main
$LFB0 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,152,$31		# vars= 120, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-152
	.cfi_def_cfa_offset 152
	sw	$31,148($sp)
	sw	$fp,144($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,140($fp)
	lui	$2,%hi($LC0)
	addiu	$3,$fp,32
	addiu	$2,$2,%lo($LC0)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$3,$fp,68
	addiu	$2,$2,%lo($LC1)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,24($fp)
	sw	$0,28($fp)
$L5:
	lw	$2,24($fp)
	slt	$2,$2,3
	beq	$2,$0,$L2
	nop

$L4:
	lw	$2,28($fp)
	slt	$2,$2,3
	beq	$2,$0,$L3
	nop

	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,144
	addu	$2,$3,$2
	lw	$4,-112($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,144
	addu	$2,$3,$2
	lw	$2,-76($2)
	addu	$4,$4,$2
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,144
	addu	$2,$3,$2
	sw	$4,-40($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L4
	nop

$L3:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L5
	nop

$L2:
	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,140($fp)
	lw	$3,0($3)
	beq	$4,$3,$L7
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,148($sp)
	lw	$fp,144($sp)
	addiu	$sp,$sp,152
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
