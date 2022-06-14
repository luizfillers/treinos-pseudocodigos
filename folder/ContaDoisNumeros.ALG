Algoritmo "ContaDoisNumeros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Somar dois números inseridos pelo usuário!
// Autor(a)    : Luiz Nison Filler
// Data atual  : 10/06/2022
Var
// Seção de Declarações das variáveis 
   N1, N2, op, Soma2, Subt2: inteiro
   Divi2, Mult2: real
   Soma1, Subt1, Divi1, Mult1, nome: caractere
   CapturaFlag: logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval ("Olá! Vamos fazer contas?")
   Escreval ("Digite seu nome!")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "!")
   Escreval ("Digite o primeiro número.")
   Leia (N1)
   Escreval ("Muito bem!")
   Escreval ("Escreva o segundo número.")
   Leia (N2)
   Escreval ("Escolha uma operação matemática a ser realizada.")
   Escreval ("Somar tecle 1, subtrair tecle 2, dividir tecle 3, multiplicar tecle 4.")
   Leia (op)
      SE op=1 ENTÃO
         Soma2 <- (N1+N2)
         Escreval ("O resultado da soma entre ", N1, " e ", N2, " é: ", Soma2)
         SENÃO
              SE op=2 ENTÃO
                 Subt2 <- (N1-N2)
                 Escreval ("O resultado da subtração entre ", N1, " e ", N2, " é: ", Subt2)
                 SENÃO
                      SE op=3 ENTÃO
                         Divi2 <- (N1/N2)
                         Escreval ("O resultado da divisão entre ", N1, " e ", N2, " é: ", Divi2)
                         SENÃO
                           SE op=4 ENTÃO
                              Mult2 <- (N1*N2)
                              Escreval ("O resultado da multiplicação entre ", N1, " e ", N2, " é: ", Mult2)
                              SENÃO
                           FIMSE
                      FIMSE
               FIMSE
          FIMSE
      Escreval ("Deseja realizar mais alguma conta? (S/N)")
      Leia (CapturaFlag)
      SE CapturaFlag = "S" ENTÃO //Não sei como colocar uma Flag de resposta.
         Escreval ("Espere um instante")
      SENÃO
         Escreval ("Foi um prazer! Volte sempre, ", nome, "!")
      FIMSE
Fimalgoritmo
