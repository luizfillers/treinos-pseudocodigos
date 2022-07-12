algoritmo "NumerosPrimos"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para contagem de números primos

var
   C, N, ContDiv: inteiro
   resp, LimpH: caractere

inicio
   Repita
      C <- 1
      ContDiv <- 0
      Escreval ("Digite um número para sabermos se ele é primo.")
      Leia (N)
      Repita
         Escreval (C)
         Se (N % C = 0) Entao
            ContDiv <- ContDiv + 1
         FimSe
         C <- C + 1
      Ate (C > N)
      Escreval ("Ao todo, exitem ", ContDiv, " valores divisíveis.")
      Se (ContDiv > 2) Entao
         Escreval ("Portanto, ", N, " NÃO é um número primo.")
      Senao
         Escreval ("Portanto, ", N, " é um número primo.")
      FimSe
      Escreval ("Deseja verificar outro número? [S/N] ")
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
