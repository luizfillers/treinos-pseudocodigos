algoritmo "SomaParametroReferencia"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para soma de dois números utilizando procedimento com passagem de parâmetro por referência.

var
   X, Y: inteiro

Procedimento Soma (var A, B: inteiro)
Inicio
      A <- A + 1
      B <- B + 2
      Escreval ("Valor de A = ", A)
      Escreval ("Valor de B = ", B)
      Escreval ("Soma A + B = ", A+B)
FimProcedimento

inicio
   X <- 4
   Y <- 8
   Soma (X, Y)
   Escreval ("Valor de X = ", X)
   Escreval ("Valor de Y = ", Y)

fimalgoritmo
