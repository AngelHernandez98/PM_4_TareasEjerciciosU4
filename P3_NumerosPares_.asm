TITLE Introduccion

;DESCRPICIÓN
;Objetivo: identificar el valor mas grande del arreglo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #3 – Obtener la cantidad de números pares.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P3 dword 11,7,6,13,20,80,24
msj0_P3 db "Los numeros pares son: ",0
msj1_P3 db "La cantidad de numeros pares son: ",0
cantidad0_P3 dword 0

.code
 main3 PROC
;Lógica del Programa

	mov ecx, 7
	mov edi, 0
	mov ebx, 2

	mov edx, offset msj0_P3
	call writeString
	call CrLf

	ciclo0:
		mov eax, numeros0_P3[edi]
		mov edx, 0
		div ebx
		cmp edx, 0 
		jnbe continuar 
			inc cantidad0_P3
			mov eax, numeros0_P3[edi]
			call writedec
			call crlf
			continuar:
		add edi,4
	loop ciclo0

	call CrLf
	mov edx, offset msj1_P3
	call writeString
	mov eax, cantidad0_P3
	call writedec
	call crlf

exit
main3 ENDP
END main3