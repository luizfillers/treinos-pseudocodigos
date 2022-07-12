algoritmo "SuperContador"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para fazer contagens progressivas ou regressivas

var
   R, cont: inteiro

inicio
   Repita
      Escreval ("")
      Escreval ("=====================")
      Escreval ("  |    M E N U    |  ")
      Escreval ("=====================")
      Escreval ("Digite o número dentre as opções abaixo: ")
      Escreval ("  | [1] De 1 a 10 |")
      Escreval ("  | [2] De 10 a 1 |")
      Escreval ("  | [3] Sair      |")
      Leia (R)
      Escolha R
      Caso 1
         cont <- 1
         Repita
            Escreva (cont, "..")
            cont <- cont + 1
         Ate (cont > 10)
      Caso 2
         cont <- 10
         Repita
            Escreva (cont, "..")
            cont <- cont - 1
         Ate (cont < 1)
      Caso 3
         Escreval ("Saindo...")
      FimEscolha
      Se (R >= 4) Entao
         Escreval ("Opção inválida!")
      FimSe
   Ate (R = 3)

fimalgoritmo
