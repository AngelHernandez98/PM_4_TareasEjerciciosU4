TITLE Introduccion

;DESCRPICI�N

;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez
; Programa #1 � Encontrar el n�mero menor de un arreglo.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
numeros0_P1 dword 11,7,6,13,20,80,24
msj0_P1 db "El numero menor es: ",0

.code
 main1 PROC
;L�gica del Programa
	
	mov ecx, 7	;Tama�o puesto directo
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