	
	ORG	00H
	
	MOV	SP, #70H
	MOV	PSW, #00H

LCD_IN:	MOV	A, #38H     ;init. LCD 2 lines, 5x7 matrix
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	MOV 	A, #0EH		;dispplay on, cursor on
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #01		;clear LCD
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #06H		;shift cursor right
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #85H		;cursor at line 1 postion 1
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #'E'		;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #'X'		;display letter O
	LCALL	DATAWRT		;call display subroutine
	LCALL	DELAY
	MOV     A, #'P'		;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #':'		;display letter O
	LCALL	DATAWRT		;call display subroutine
	MOV     A, #'0'		;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #'4'		;display letter O
	LCALL	DATAWRT		;call display subroutine
	LCALL	DELAY       ;give LCD some time
		
	MOV     A, #0C3H	;cursor at line 1 postion 1
	LCALL	COMNWRT		;call command subroutine
	LCALL 	DELAY		;give LCD some time
	
	MOV     A, #'8'		;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV     A, #' '		;display letter O
	LCALL	DATAWRT		;call display subroutine
	LCALL	DELAY
	MOV     A, #'B'		;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV	A, #'i'			;display letter O
	LCALL	DATAWRT		;call display subroutine
	MOV	A, #'t'			;display letter N
	LCALL	DATAWRT		;call display subroutine
	LCALL 	DELAY		;give LCD some time
	MOV	A, #' '			;display letter O
	LCALL	DATAWRT			;call display subroutine
	LCALL	DELAY
	MOV	A, #'L'			;display letter N
	LCALL	DATAWRT			;call display subroutine
	LCALL 	DELAY			;give LCD some time
	MOV	A, #'C'			;display letter O
	LCALL	DATAWRT			;call display subroutine
	LCALL	DELAY
	MOV	A, #'D'			;display letter N
	LCALL	DATAWRT			;call display subroutine
	LCALL 	DELAY			;give LCD some time
	sjmp	$

COMNWRT:LCALL	READY			;send command to LCD
	MOV	P1, A			;copy reg A to port 1
	CLR	P3.4			;RS=0 for command
	CLR	P3.5			;R/W=0 for write
	SETB	P3.6			;E-1 for high pulse	
	ACALL	DELAY			;give LCD some time
	CLR	P3.6			;E=0 for H-to-L pulse
	RET
	
DATAWRT:LCALL	READY			;write data to LCD
	MOV	P1, A			;copy reg A to port1
	SETB	P3.4			;RS=1 for data
	CLR	P3.5			;R/W=0 for write
	SETB	P3.6			;E=1 for high pulse
	ACALL	DELAY			;give LCD some time
	CLR	P3.6			;E=0 for H-to-L pulse
	RET
	
READY:	SETB	P1.7
	CLR	P3.4
	SETB	P3.5
		
WAIT:	CLR	P3.6
	LCALL	DELAY
	SETB	P3.6
	JB	P1.7, WAIT
	RET
	
DELAY:	MOV	R3, #50			;50 or higher for fast CPUs
HERE2:	MOV	R4, #255		;R4=255
HERE:	DJNZ	R4, HERE		;stay untill R4 becomes 0
	DJNZ 	R3, HERE2
	RET

	END