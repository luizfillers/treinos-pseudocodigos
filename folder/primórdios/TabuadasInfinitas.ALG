algoritmo "TabuadasInfinitas"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para calcular quantas tabuadas o usuário desejar

var
   cont, N, result: inteiro
   resp: caractere

inicio
   Escreva ("Digite o número para vermos a tabuada dele. ")
   leia (N)
   cont <- 1
   Repita
      result <- cont*N
      Escreval (cont, " x ", N, " = ", result)
      cont <- cont + 1
   Ate (cont > 10)
   Escreva ("Deseja fazer outra tabuada? [S/N] ")
   Leia (resp)
   Enquanto (resp = "S") faca
      Escreva ("Digite o número para vermos a tabuada dele. ")
      leia (N)
      cont <- 1
      Repita
         result <- cont*N
         Escreval (cont, " x ", N, " = ", result)
         cont <- cont + 1
      Ate (cont > 10)
      Escreva ("Deseja fazer outra tabuada? [S/N] ")
      Leia (resp)
   FimEnquanto
fimalgoritmo
