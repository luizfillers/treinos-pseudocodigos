algoritmo "TorneioFutebol"
//autor: Luiz Nison Filler
//disciplina: Algoritmo - Curso em Vídeo
//ler o nome de times e disponibilizar possibilidades de jogos

var
   time: vetor [1..5] de caractere
   i, j: inteiro

Inicio
   Escreval ("-----------------")
   Escreval (" TORNEIO FUTEBOL ")
   Escreval ("-----------------")
   Para i <- 1 ate 5 faca
      Escreva ("Nome do ", i, "o. time: ")
      Leia (time[i])
   FimPara

   LimpaTela
   Escreval ("--------------------")
   Escreval (" TABELA DE PARTIDAS ")
   Escreval ("--------------------")
   Para j <- 1 ate 5 faca
      Para i <- 1 ate 5 faca
         Se (j <> i) entao
            Escreval (time[j]:12, "[ ] X [ ] ", time[i]:12)
         FimSe
      FimPara
   FimPara

FimAlgoritmo
