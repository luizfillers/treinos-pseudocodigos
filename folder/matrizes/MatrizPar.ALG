algoritmo "MatrizPar"
// autor: Luiz Nison Filler
// disciplina: Algoritmo - Curso em Vídeo
// rotina para ler, armazenar matrizes e identificar quais são os números pares e o seu total

var
   mat: vetor [1..3, 1..3] de inteiro
   l, c, TotPar: inteiro

inicio
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Escreva ("Digite o valor para a posição [", l, ",", c, "]: ")
         Leia (mat[l,c])
      FimPara
   FimPara

   Escreval ()
   Escreval ("-------------")
   Escreval (" M A T R I Z ")
   Escreval ("-------------")
   TotPar <- 0
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se (mat[l,c] % 2 = 0) entao
            Escreva ("[", mat[l,c], "]":2)
            TotPar <- TotPar + 1
         senao
            Escreva (mat[l,c]:2)
         FimSe
      FimPara
      Escreval ()
   FimPara
   Escreval ("Ao todo foram digitados", TotPar, " valores pares.")

fimalgoritmo
