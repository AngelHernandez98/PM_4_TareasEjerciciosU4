TITLE Introduccion

;DESCRPICIÓN
;Objetivo: identificar el valor mas grande del arreglo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #2 – Buscar e imprimir todos los elementos mayores o iguales al promedio.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P2 dword 11,7,6,13,20,80,24
msj0_P2 db "La sumatoria del arreglo es: ",0
msj1_P2 db "Promedio de la sumatoria del arreglo: ",0
msj2_P2 db "Numeros mayores o iguales al promedio: ",0
promedio0_P2 dword 0

.code
 main2 PROC
;Lógica del Programa

	mov ecx, 7
	mov edi, 0
	mov ebx, 0
	mov eax, 0

	ciclo0:
		add ebx, numeros0_P2[edi]
		mov eax, ebx
		add edi, 4
	loop ciclo0

	mov edx, offset msj0_P2
	call writeString
	call writeDec
	call CrLf

	mov edx, 0
	mov ebx, 7
	div ebx

	mov edx, offset msj1_P2
	call writeString
	call writeDec
	call CrLf

	mov edx, offset msj2_P2
	call writeString
	call CrLf

	mov ecx, 7
	mov edi, 0
	mov promedio0_P2, eax

	ciclo1:
		cmp eax, numeros0_P2[edi]
		jge continuar 
			mov ebx, numeros0_P2[edi]
			mov eax, ebx
			call writeDec
			call CrLf
			continuar:
		add edi,4
		mov eax, promedio0_P2
	loop ciclo1

exit
main2 ENDP
END main2