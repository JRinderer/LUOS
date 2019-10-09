print:
	pusha

start:
	mov al, [bx]
	cmp al, 0
	je done ; this is similar to a while loop. If equal 0 jump to done

	mov ah, 0x0e
	int 0x10
	add bx, 1
	jmp start ; if je done is not executed we'll go back to the top

done:
	popa 
	ret

print_n1:
	pusha
	mov ah, 0x0e
	mov al, 0x0a
	int 0x10
	
	mov al, 0x0d
	int 0x10
	popa
	ret




