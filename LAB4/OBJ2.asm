;SOUMYA PRAKASH BISWAL
;2141002122
;ARRANGE ARRAY IN ASSCENDING ORDER

.DATA
SIZE DB 04H
VALUE DB 0FH,09H,14H,10H

.CODE
MAIN PROC   
    
     MOV AX,DATA ;DATA =0710
     MOV DS,AX
     MOV CL,SIZE
     DEC CL  
     
    UP2:
     MOV CH,CL
     LEA SI,VALUE 
     
    UP1: 
     MOV AL,[SI]
     CMP AL,[SI+1]
     JC L2  
     MOV DL,[SI+1]  
     XCHG [SI],DL
     MOV [SI+1],DL
     
    L2:
     INC SI
     DEC CH
     JNZ UP1
     DEC CL
     JNZ UP2
      
END MAIN     