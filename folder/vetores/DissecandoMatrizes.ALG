algoritmo "DissecandoMatrizes"
// autor: Luiz Nison Filler
// disciplina: Algoritmo - Curso em Vídeo
// rotina para preencher matriz de quarta ordem e possibilitar que o usuário visualize: (1) matriz inteira; (2) apenas diagonal principal; (3) triângulo superior; (4) ou triãngulo inferior

var
   mat: vetor[1..4, 1..4] de inteiro
   l, c, opcao: inteiro

Procedimento MatrizInteira()
Inicio
   LimpaTela
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva (mat[l,c]:4)
      FimPara
      Escreval ()
   FimPara
   Escreval ()
   Menu()
FimProcedimento

Procedimento DiagonalPrincipal()
var
   t: inteiro
Inicio
   LimpaTela
   Para l <- 1 ate 4 faca
      Escreval (mat[l,l]:4)
      Para t <- 1 ate l faca
         Escreva ("    ")
      FimPara
   FimPara
   Escreval ()
   Menu()
FimProcedimento

Procedimento TrianguloSup()
var
   t: inteiro
Inicio
   LimpaTela
   Para l <- 1 ate 3 faca
      Escreva ("    ")
      Para c <- l+1 ate 4 faca
         Escreva (mat[l,c]:4)
      FimPara
      Escreval ()
      Para t <- 1 ate l faca
         Escreva ("    ")
      FimPara
   FimPara
   Escreval ()
   Menu()
FimProcedimento

Procedimento TrianguloInf()
Inicio
   LimpaTela
   Para l <- 2 ate 4 faca
      Escreval ()
      Para c <- 1 ate l-1 faca
         Escreva (mat[l,c]:4)
      FimPara
   FimPara
   Escreval ()
   Menu()
FimProcedimento

inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva ("Digite valor para a posição [", l, ",", c, "]: ")
         Leia (mat[l,c])
      FimPara
   FimPara

   LimpaTela
   Repita
      Escreval ()
      Escreval (" MENU DE OPÇÕES ")
      Escreval ("================")
      Escreval ("[1] Mostrar a Matriz completa")
      Escreval ("[2] Diagonal Principal")
      Escreval ("[3] Triângulo Superior")
      Escreval ("[4] Triângulo Inferior")
      Escreval ("[5] Sair")
      Repita
         Escreva ("===== OPÇÃO: ")
         Leia (opcao)
      Ate (opcao >=1) E (opcao <=5)
      LimpaTela
      Escolha (opcao)
      Caso 1
         MatrizInteira()
      Caso 2
         DiagonalPrincipal()
      Caso 3
         TrianguloSup()
      Caso 4
         TrianguloInf()
      Caso 5
         Escreva ("ENCERRANDO ...")
      FimEscolha
   Ate (opcao = 5)

fimalgoritmo
