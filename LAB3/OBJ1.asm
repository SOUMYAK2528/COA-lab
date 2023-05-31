;NAME: Soumya prakash biswal
;REGD. NO: 2141002122  

;find the sum and average of n 16-bit numbers

MOV AX,1000H
MOV DS,AX
MOV SI,5000H
MOV CL,[SI]
MOV BL,CL
MOV AX,0000H
MOV DX,0000H 
L2:
INC SI
INC SI    
ADD AX,[SI]
JNC L1
INC DX
L1:
DEC CL
JNZ L2
INC SI
INC SI
MOV [SI],AX
INC SI
INC SI
MOV [SI],DX    
DIV BX
INC SI
INC SI
MOV [SI],AX
INC SI
INC SI
MOV [SI],DX
HLT


