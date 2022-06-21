Algoritmo "ContaDoisNumeros"
//autor: Luiz Nison Filler
//rotina para somar dois números inseridos pelo usuário!
//1ª data: 10/06/2022

Var 
   N1, N2, op, Soma, Subt: inteiro
   Divi, Mult: real
   nome, resp: caractere

Inicio
   Escreval ("Olá! Vamos fazer contas?")
   Escreval ("Digite seu nome!")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "!")
   Repita
      Escreval ("Digite o primeiro número.")
      Leia (N1)
      Escreval ("Muito bem!")
      Escreval ("Escreva o segundo número.")
      Leia (N2)
      Escreval ("Escolha uma operação matemática a ser realizada.")
      Escreval ("[1] Soma")
      Escreval ("[2] Subtração")
      Escreval ("[3] Divisão")
      Escreval ("[4] Multiplicação")
      Leia (op)
      Escolha op
      Caso 1
         Soma <- (N1 + N2)
         Escreval ("O resultado da soma entre ", N1, " e ", N2, " é: ", Soma)
      Caso 2
         Subt <- (N1 - N2)
         Escreval ("O resultado da subtração entre ", N1, " e ", N2, " é: ", Subt)
      Caso 3
         Divi <- (N1 / N2)
         Escreval ("O resultado da divisão entre ", N1, " e ", N2, " é: ", Divi)
      Caso 4
         Mult <- (N1 * N2)
         Escreval ("O resultado da multiplicação entre ", N1, " e ", N2, " é: ", Mult)
      FimEscolha
      Escreval ("Deseja realizar mais alguma conta? (S/N)")
      Leia (resp)
      Se (resp = "S") entao
         Escreval ("Espere um instante")
      senao
         Escreval ("Foi um prazer! Volte sempre, ", nome, "!")
      FimSe
   Ate (resp = "N")
   
Fimalgoritmo
