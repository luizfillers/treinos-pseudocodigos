algoritmo "ContagemInteligente"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para realizar a contagem progressiva ou regressiva entre dois números

var
   I, F, cont: inteiro

inicio
   Escreval ("--------------------")
   Escreval ("CONTAGEM INTELIGENTE")
   Escreval ("--------------------")
   Escreva ("Digite o número inicial para a contagem. ")
   Leia (I)
   Escreva ("Digite o número final para a contagem. ")
   Leia (F)
   Escreval("--------------------")
   Escreval ("CONTANDO")
   Escreval("--------------------")
   Se (F > I) Entao
      cont <- I
      Enquanto (cont <= F) Faca
         Escreva (cont, "...")
         cont <- cont + 1
      FimEnquanto
   senao
      cont <- I
      Enquanto (cont >=F) faca
         Escreva (cont, "...")
         cont <- cont - 1
      FimEnquanto
   FimSe

fimalgoritmo
