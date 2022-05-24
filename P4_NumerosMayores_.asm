TITLE Introduccion

;DESCRPICIÓN
;Objetivo: identificar el valor mas grande del arreglo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #4 – Imprimir la cantidad de números mayores a X, siendo que X es ingresado por el usuario.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P4 dword 11,7,6,13,20,80,24
msj0_P4 db "Ingrese un numero: ",0
msj1_P4 db "La cantidad de numeros mayores son: ",0
numero0_P4 dword 0
cantidad0_P4 dword 0

.code
 main4 PROC
;Lógica del Programa

	mov edx, offset msj0_P4
	call writeString
	call readInt

	mov ecx, 7
	mov edi, 0
	mov numero0_P4, eax

	ciclo:
		cmp numeros0_P4[edi], eax 
		jle continuar 
			mov ebx, numeros0_P4[edi]
			inc cantidad0_P4
			continuar:
		add edi,4
		mov eax, numero0_P4
	loop ciclo

	call CrLf
	mov edx, offset msj1_P4
	call writeString
	mov eax, cantidad0_P4
	call writeDec
	call CrLf

exit
main4 ENDP
END main4