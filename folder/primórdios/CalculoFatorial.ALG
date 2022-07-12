algoritmo "CalculoFatorial"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para calcular o fatorial de números inseridos pelo usuário

var
   C, N, F: inteiro
   resp, LimpH: caractere
inicio
   Repita
      Escreva ("Digite o número para calcular seu fatorial. ")
      Leia (N)
      Escreva ("")
      C <- N
      F <- 1
      Repita
         F <- F*C
         C <- C - 1
      Ate (C < 1)
      Escreval ("O valor do fatorial de ", N, " é igual à ", F)
      Escreval ("Quer continuar a calcular fatoriais? [S/N]")
      Leia (resp)
      Se (resp = "S") Entao
         Escreval ("Deseja limpar o histórico? [S/N] ")
         Leia (LimpH)
         Se (LimpH = "S") Entao
            LimpaTela
         FimSe
      FimSe
   Ate (resp = "N")

fimalgoritmo
