loop:
mov ah, 0x0e
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'y'
int 0x10
mov al, '_'
int 0x10
mov al, 'F'
int 0x10
mov al, 'l'
int 0x10
mov al, 'y'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, 's'
int 0x10

jmp $ 

times 510 - ($-$$) db 0
dw 0xaa55

