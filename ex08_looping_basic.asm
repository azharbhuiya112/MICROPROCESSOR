; #RULE : 8 BIT E 8 BIT , 16 BIT E 16  
; MOV AX, BL ---> WRONG.  MOV AX, BX RIGHT.

;LOOP SYNTAX :
;
;LABEL_NAME:
;
;LOOPING INSTRUCTIONS
;INCREMENT DECREMENT (NOT CX)
;
;LOOP LABEL_NAME  

ORG 100H
.MODEL SMALL

.DATA

.CODE
MAIN PROC
    
    MOV CX, 10 ; MANE LOOP 10 BAR CHOLBE
    
    MOV DX, 48  ; AS WE WANT TO PRINT 0 AT THE BEGINING, DL USE KORLEO HOBE JUST MOV BL, DL KORTE HOBE,,,
    

    PRINT_0_TO_9: ; LABEL NAME
    MOV AH, 2
    INT 21H
    MOV BX, DX    ; DX ER VALUE STORE KORA JORURI KARON NEWLINE PRINT KORAR JONNE DX(DL) ER USE HOI
    
    MOV DX, BX
    INC DX ; INC 2 KORLE 0,2,4,6,9 THEN HABIJABI,,,,ADD KOREO KORA JABE
    
    LOOP PRINT_0_TO_9   ; HORIZONTALLY
     
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV DX, 57
    MOV CX, 10 ; CX ABAR INITIALIZE NA KORLE ETA INFINITE LOOP(65000 BAR+) PRINT KORBE
     
    PRINT_9_TO_0: ; VERTICALLY
    MOV AH, 2
    INT 21H
    MOV BX, DX    ; DX ER VALUE STORE KORA JORURI KARON NEWLINE PRINT KORAR JONNE DX(DL) ER USE HOI
    
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV DX, BX
    DEC DX ; INC 2 KORLE 0,2,4,6,9 THEN HABIJABI,,,,ADD KOREO KORA JABE
    
    LOOP PRINT_9_TO_0
    
; SAME PROBLEM CAN BE IMPLEMENTED FOR A TO Z PRINTING   
    
RET                                                                                        