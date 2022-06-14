algoritmo "TesteTriangulos"
// autor: Luiz Nison Filler
// rotina para analisar propriedades de triângulos

var
   L1, L2, L3: inteiro
   EQ, ES, TRI: logico
   nome: caractere

inicio
      Escreval ("Olá! Qual é o seu nome?")
      Leia (nome)
      Escreval ("Prazer em te conhecer, ", nome, "!")
      Escreval ("Eu te ajudarei a verificar se o seu triângulo é equilátero ou escaleno.")
      Escreval ("Para começarmos, digite valor correspondente ao primeiro lado.")
      Leia (L1)
      Escreval ("Agora, digite o valor do segundo lado.")
      Leia (L2)
      Escreval ("Por último, digite o valor do terceiro lado.")
      Leia (L3)
      TRI <- (L1<(L2+L3)) E (L2<(L1+L3)) E (L3<(L1+L2))
      EQ <- (L1=L2) E (L2=L3) E (TRI)
      ES <- (L1<>L2) E (L2<>L3) E (L1<>L3) E (TRI)
      Escreval ("Pensado com meus botões...")
      Escreval ("Primeiro, verificaremos se esse valores são de um triângulo mesmo.")
      EscrevaL ("Os valores são de um triângulo? ", TRI)
      Escreval ("O triângulo é Equilátero? ", EQ)
      Escreval ("O triãngulo é Escaleno? ", ES)
      Escreval ("Muito obrigado e foi um prazer!")
      

fimalgoritmo
