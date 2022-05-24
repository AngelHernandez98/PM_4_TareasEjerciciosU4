TITLE Introduccion

;DESCRPICIÓN

;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #1 – Encontrar el número menor de un arreglo.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P1 dword 11,7,6,13,20,80,24
msj0_P1 db "El numero menor es: ",0

.code
 main1 PROC
;Lógica del Programa
	
	mov ecx, 7	;Tamaño puesto directo
	mov edi, 0
	mov ebx, numeros0_P1[edi]
	ciclo:
		add edi,4
		cmp ebx, numeros0_P1[edi]
		jle continuar 
			mov ebx, numeros0_P1[edi]
		continuar:
	loop ciclo
	mov edx, offset msj0_P1
	call writeString
	mov eax, ebx
	call writeDec
	call CrLf

exit
main1 ENDP
END main1