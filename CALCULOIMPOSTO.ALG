algoritmo "CalculoImposto"
// rotina para calcular o quanto de imposto será cobrado nos produtos do Sam

var
   preco, imposto: real

inicio
      Escreval ("Digite o preço do produto.")
      Leia (preco)
      imposto <- ((preco*60)/100)
      Escreval ("Você terá de pagar R$", imposto, " de imposto.")

fimalgoritmo