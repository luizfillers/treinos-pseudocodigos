algoritmo "DoacaoCriancaEsperanca"
// autor: Luiz Nison Filler
// rotina de doações para Criança Esperança.
// nota_autor: foram utilizadas estruturas de seleção (condicionais) múltiplas, utilizando os recursos "Faça Caso" e "Escolha".
var
   doacao: inteiro
   valor: real

inicio
   Escreval ("-------------------------------------------")
   Escreval ("Bem vindo(a) ao Criança Esperança.")
   Escreval ("-------------------------------------------")
   Escreval ("Digite um dos valores abaixo para efetuar uma doação.")
   Escreval ("[1] - para doar R$10,00")
   Escreval ("[2] - para doar R$25,00")
   Escreval ("[3] - para doar R$50,00")
   Escreval ("[4] - para doar outros valores")
   Escreval ("[5] - para cancelar doação")
   Leia (doacao)
   Escolha (doacao)
   Caso 1
      valor <-10
   Caso 2
      valor <-25
   Caso 3
      valor <-50
   Caso 4
      Escreva ("Qual o valor da doação? R$ ")
      Leia (valor)
   Caso 5
      valor <-0
   FimEscolha
   Escreval ("-------------------------------------------")
   Escreval ("Sua doação de R$", valor, " foi efetivada.")
   Escreval ("Muito obrigado!")
   Escreval ("-------------------------------------------")

fimalgoritmo
