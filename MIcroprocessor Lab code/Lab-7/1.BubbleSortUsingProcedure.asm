
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov cx, len
dec cx
cmp cx, 0h
je return

call BubbleSort
ret
    
BubbleSort proc near
    outlup:
    lea si, arr
    mov dx, cx
    inlup:
        mov di, si
        inc di
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        ja swap
        BackToIn:
            inc si
            inc di
            loop inlup
        mov cx, dx
        loop outlup 
ret
BubbleSort endp    


return:
    ret
swap:
    mov tmp, al
    mov al, bl
    mov bl, tmp
    mov [si], al
    mov [di], bl
    jmp BackToIn
    

arr db 6h, 4h, 1h, 9h, 2h
len equ ($-arr)
tmp db ?

