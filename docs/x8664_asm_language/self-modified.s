	.section "axw", "axw"
	.globl main

main:
	movl	$0x11223344, mov_inst+3

	jmp	1f              # �ץ�����񤭤��������Ȥ�ɬ��
1:	nop                     # �ץ�����񤭤��������Ȥ�ɬ��

mov_inst:
	mov	$0x1, %rax 	# 0x48 0xc7 0xc0 0x01 0x00 0x00 0x00
	ret
