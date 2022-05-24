TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #9 – Números pares de una matriz.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

PrintLn_P9 MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0 
		msj db texto,0

	.code
	; Lógica del Programa
	mov edx, offset msj
	call writeString

ENDM

.data
; Área de Declaración de Variables
matriz_P9  dword  5,  9,  15
		   dword 20, 50,   3
		   dword 11, 19,   8

tamDato dword 4
t_Filas dword 3
t_Columnas dword 3
numero_Fila dword 0
cantidadPares_P9 dword 0

.code
 main9 PROC
;Lógica del Programa

	mov ecx, 0 ;filas
	mov ebx, 2

	ciclofilas:
		push ecx
		mov eax, tamDato
		mul t_Columnas
		mul ecx
		mov esi, eax
		mov ecx, 0
			cicloColumnas:
				mov eax, ecx
				mul tamDato
				mov edi, eax
				mov eax, matriz_P9[esi+edi]

				mov edx, 0
				div ebx
				cmp edx, 0 
				jnbe continuar 
					inc cantidadPares_P9
				continuar:

				inc ecx 
				cmp ecx, t_Columnas
				jl cicloColumnas
			pop ecx
			inc ecx
			cmp ecx,t_Filas
			jl ciclofilas

	PrintLn_P9 "La cantidad de numeros pares es: "
	mov eax, cantidadPares_P9
	call writeDec
	call CrLf

exit
main9 ENDP
END main9