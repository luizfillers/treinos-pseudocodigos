algoritmo "ConversaoTemperatura"
// rotina para calcular a conversão de Fahrenheit para Graus Celsius
// comentário: para calcular em "ºC" pode ser dividio em "1.8" como está aqui abaixo ou multiplicado por "0.5555555555555556"

var
   C, F: real

inicio
      Escreval ("Digite a temperatura em Fahrenheit, por favor.")
      Leia (F)
      C <- ((F - 32)/1.8)
      Escreval ("A temperatura em graus celsius é: ", C, ".")
      Escreval ("Boa sorte com esse clima!")

fimalgoritmo