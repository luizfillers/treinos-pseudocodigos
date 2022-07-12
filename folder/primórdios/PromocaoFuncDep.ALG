algoritmo "PromocaoFuncDep"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para verificar qual será o novo salário que um funcionário receberá a depender da quantidade de dependentes que ele possui

var
   nome: caractere
   sal, nsal: real
   dep: inteiro

inicio
   Escreva ("Olá! Qual o nome do funcionário que deseja pesquisar? ")
   Leia (nome)
   Escreva ("Digite o salário do(a) funcionário(a) ", nome, ". R$")
   Leia (sal)
   Escreva ("Digite a quantidade de dependentes que ", nome, " possui. ")
   Leia (dep)
   Escolha dep
   Caso 0
      nsal <- sal + (sal*5/100)
   Caso 1, 2, 3
      nsal <- sal + (sal*10/100)
   Caso 4, 5, 6
      nsal <- sal + (sal*15/100)
   OutroCaso
      nsal <- sal + (sal*18/100)
   FimEscolha
   Escreval ("Com a nova promoção, o salário de ", nome, " será de R$", nsal:5:2)

fimalgoritmo
