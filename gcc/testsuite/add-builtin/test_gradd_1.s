	.file	"test_gradd_1.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	g
	.type	g, @function
g:
	gradd	a5,a0,a1
	li	a0,0
	ret
	.size	g, .-g
	.ident	"GCC: (GNU) 10.2.0"
