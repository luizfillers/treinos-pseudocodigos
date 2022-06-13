algoritmo "JurosImprestimo"
// rotina para calcular o imprestimo do quanto Sam precisará
// preço p/pegar -> preco | preço p/pagar depois -> juros | Juros em 20%

var
   preco, juros, valor_parcela: real
   parcela: inteiro
inicio
   Escreval ("Bom dia, Sam. Digite o quanto de dinheiro você precisa que empreste.")
   Leia (preco)
   juros <- (preco + (preco*20)/100))
   Escreval ("Beleza. Com o juros de 20%, depois você terá de me pagar o valor de R$", juros, " tudo bem?")
   Escreval ("Em quantas vezes você vai querer parcelar esse valor?")
   Leia (parcela)
   valor_parcela <- (juros/parcela)
   Escreval ("Okay. Então você terá que me pagar os R$", juros, " em ", parcela, " parcelas de R$ ", valor_parcela, ".")
   Escreval ("Até mais. E espero não precisar chamar meus capangas para te cobrar.")
   
fimalgoritmo