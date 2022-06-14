algoritmo "ViagemSam"
// rotina para fazer a cotação de dólar americano para real (06/2022) para que o Sam tenha o dinheiro para sua viagem de aniversário.

var
   m_dolar, m_real, cotacao: real

inicio
      Escreval ("Olá! Bem vindo a Cotação G&L.")
      Escreval ("Digite, por favor, o valor de quanto está valendo o dólar neste momento.")
      Leia (m_dolar)
      Escreval ("Wow! Está caro mesmo, ein.")
      Escreval ("Agora, digite o quanto de real você quer trocar.")
      Leia (m_real)
      Escreval ("Um minutinho! Pi po pu... calculando ...")
      cotacao <- (m_real/m_dolar)
      Escreval ("Prontinho! Se você comprar hoje, você terá", (cotacao), "dólares")
      Escreval ("Muito obrigado e volte sempre.")

fimalgoritmo
