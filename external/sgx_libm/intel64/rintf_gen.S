/*
* Math library
*
* Copyright (C) 2016 Intel Corporation. All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
*   * Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   * Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*   * Neither the name of Intel Corporation nor the names of its
*     contributors may be used to endorse or promote products derived
*     from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
* OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
* THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
*
* Author Name <jingwei.zhang@intel.com>
*   History:
*   03-14-2016 Initial version. numerics svn rev. 12864
*/
	.file "rintf_gen.c"
	.text
..TXTST0:
# -- Begin  rintf
	.text
       .align    16,0x90
	.globl rintf
rintf:
# parameter 1: %xmm0
..B1.1:
	.cfi_startproc
..___tag_value_rintf.1:
..L2:

..B1.2:
        xorps     %xmm1, %xmm1
        ucomiss   p2to23(%rip), %xmm0
        jae       .L_2TAG_PACKET_0.0.1
        ucomiss   m2to23(%rip), %xmm0
        jbe       .L_2TAG_PACKET_0.0.1
        ucomiss   %xmm1, %xmm0
        je        .L_2TAG_PACKET_0.0.1
        cvtss2si  %xmm0, %eax
        cvtsi2ss  %eax, %xmm0
.L_2TAG_PACKET_0.0.1:
        ret       
..B1.3:
        .align    16,0x90
	.cfi_endproc
	.type	rintf,@function
	.size	rintf,.-rintf
	.data
# -- End  rintf
	.section .rodata, "a"
	.align 16
	.align 16
p2to23:
	.long	0x4b000000
	.type	p2to23,@object
	.size	p2to23,4
	.space 12, 0x00 	# pad
	.align 16
m2to23:
	.long	0xcb000000
	.type	m2to23,@object
	.size	m2to23,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 1
# End
