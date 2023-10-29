.section .data
	.global length1 
	.global length2
	.global height

.section .text
.global getArea 

getArea:
    movw length1(%rip), %ax   # Move length1 para %ax
    addw length2(%rip), %ax   # Adiciona length2 a %ax
    movw height(%rip), %cx    # Move height para %cx

    imulw %cx                # Multiplica %ax por %cx (altura)
    shrw $1, %ax             # Divide o resultado por 2 (mesmo que deslocar um bit para a direita)

    movw %ax, %di            # Move o resultado para %di (registro de destino para retorno)
    ret
