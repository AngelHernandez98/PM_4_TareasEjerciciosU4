TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #7 – Valor más grande de una matriz.

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

PrintLn_P7 MACRO texto
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
matriz_P7  dword  5,  9,  15
		   dword 20, 50,   3
		   dword 11, 19,   8

tamDato dword 4
t_Filas dword 3
t_Columnas dword 3
numero_Fila dword 0
numeroMayor_P7 dword 0

.code
 main7 PROC
;Lógica del Programa

	mov ecx, 0 ;filas

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
				mov eax, matriz_P7[esi+edi]
				cmp numeroMayor_P7, eax
					jg continuar
						mov numeroMayor_P7, eax
					continuar:
				inc ecx 
				cmp ecx, t_Columnas
				jl cicloColumnas
			pop ecx
			inc ecx
			cmp ecx,t_Filas
			jl ciclofilas

	PrintLn_P7 "El numero mayor es: "
	mov eax, numeroMayor_P7
	call writeDec
	call CrLf

exit
main7 ENDP
END main7