	.file	"test_gradd_2.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	g
	.type	g, @function
g:
	graddw	a0,a0,a1
	sext.w	a0,a0
	ret
	.size	g, .-g
	.align	1
	.globl	f
	.type	f, @function
f:
	graddw	a6,a0,a1
	addiw	a4,a0,1
	addiw	a3,a1,2
	graddw	a5,a4,a3
	graddw	a2,a0,a1
	graddw	a4,a4,a3
	graddw	a0,a0,a1
	addw	a5,a5,a6
	addw	a5,a5,a2
	addw	a5,a5,a4
	addw	a0,a5,a0
	ret
	.size	f, .-f
	.ident	"GCC: (GNU) 10.2.0"
