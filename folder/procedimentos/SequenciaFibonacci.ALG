algoritmo "SequenciaFibonacci"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para a exibição dos 15 primeiros termos de uma série de Fibonacci

var
   V1, V2, V3, Fi: inteiro
   resp: caractere

Procedimento ProximoFibonacci(var A, B: inteiro)
var C: inteiro
Inicio
   C := A + B
   Escreva (C)
   A := B
   B := C
FimProcedimento

inicio
   Repita
      Escreval ("Olá! Vamos ver alguns termos da sequencia de Fibonacci? [S/N] ")
      Leia (resp)
      Se (resp = "S") entao
         V1 <- 0
         Escreva (V1)
         V2 <- 1
         Escreva (V2)
         Para Fi:= 3 até 15 passo 1 faca
            ProximoFibonacci(V1, V2)
         FimPara
      FimSe
      Escreval ("")
   Ate (resp <> "S")

fimalgoritmo
