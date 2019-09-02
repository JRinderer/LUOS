mov ah, 0x0e ; tty mode

mov bp, 0x8000
mov sp, bp

push 'r'
push 'e'
push 'y'
push 'l'
push 'F'
push ' '
push 'o'
push 'l'
push 'l'
push 'e'
push 'H'

mov al, [0x7ffe]
;int 0x10

;mov al, [0x8000]
;int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10

pop bx
mov al, bl
int  0x10


mov al, [0x8000]
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
