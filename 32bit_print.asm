[bits] 32

VIDEO_MEMORY equ 0xb8000
WHITE_ON_BLACK equ 0x0f

print_string_pm:
	pusha
	mov edx, VIDEO_MEMORY ;this is the location video memory starts

print_string_pm_loop:
	mov al, [ebx] ;this is the address of our first character
	mov ah, WHITE_ON_BLACK ;this is our color

	cmp al, 0;have we reached the end of the sting?

	je print_string_pm_done

	mov [edx], ax ;store the character + attribute in video memory
	add ebx, 1 ;next character
	add ebx, 2 ;next video memory position

	jmp print_string_pm_loop

print_string_pm_done:
	popa
	ret

