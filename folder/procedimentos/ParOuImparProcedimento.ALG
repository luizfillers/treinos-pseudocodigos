algoritmo "ParOuImparProcedimento"
//autor: Luiz Nison Filler
//disciplina: Algoritmos - Curso em Vídeo
//rotina para verificar se um número é par ou impar utilizando procedimentos com passagem de parâmetros por valores.

var
   N: inteiro
   resp: caractere

Procedimento ParOuImpar(V: inteiro)
inicio
   Se (V % 2 =0) entao
      Escreval ("O número ", N, " é PAR.")
   senao
      Escreval ("O número ", N, " é IMPAR.")
   FimSe
fimprocedimento

inicio
Repita
   LimpaTela
   Escreva ("Digite um número: ")
   Leia (N)
   ParOuImpar(N)
   Escreva ("Deseja continuar? [S/N] ")
   Leia (resp)
Até (resp = "N")
fimalgoritmo
