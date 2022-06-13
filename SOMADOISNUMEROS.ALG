Algoritmo "SomaDoisNumeros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Somar dois números inseridos pelo usuário!
// Autor(a)    : Luiz Nison Filler
// Data atual  : 10/06/2022
Var
// Seção de Declarações das variáveis 
   N1, N2, Soma: inteiro
   nome: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval ("Olá! Vamos somar?")
   Escreval ("Digite seu nome!")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "!")
   Escreval ("Digite o primeiro número.")
   Leia (N1)
   Escreval ("Muito bem!")
   Escreval ("Escreva o segundo número.")
   Leia (N2)
   Soma <- (N1+N2)
   Escreval ("O resultado da soma entre", N1, " e ", N2, " é: ", soma, "!")
   Escreval ("Foi um prazer! Volte sempre, ", nome, "!")
   
Fimalgoritmo