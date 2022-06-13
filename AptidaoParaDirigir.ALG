algoritmo "AptidaoParaDirigir"
// rotina de calcular se a pessoa está na idade para ter uma carteira para dirigir.

var
   ano_atual, nasc, idade, idade_falta: inteiro

inicio
   Escreval ("DEPARTAMENTO DE TRÂNSITO")
   Escreval ("Digite o ano (YYYY) no qual você se encontra, por favor.")
   Leia (ano_atual)
   Escreval ("Agora digite o ano (YYYY) do seu nascimento, por favor.")
   Leia (nasc)
   idade <- (ano_atual - nasc)
   idade_falta <- (18-idade)
   Se (idade >=18) Entao
      Escreval ("Parabéns! Você está apto a ter uma carteira de motorista.")
   Senao
      Escreval ("Poxa vida. Ainda resta", (idade_falta), " anos para que você possa estar apto a ter uma carteira de motorista.")
   FimSe

fimalgoritmo