algoritmo "CalculoIMC"
// rotina para calcular o IMC
// obs: Massa /altura² | Peso ideal = 18,5 e 25

var
   massa, altura, IMC: real

inicio
   Escreval ("Digite sua massa em quilogramas (kg).")
   Leia (massa)
   Escreval ("Digite sua altura em metros (m).")
   Leia (altura)
   IMC <- (massa/(altura^2))
   Escreval ("Seu IMC é: ", IMC:5:2)
   Se (IMC <17) Entao
      Escreval ("Você está muito abaixo do peso sugerido. É recomendado consultar-se com um médico.")
   Senao
      Se (IMC >=17) e (IMC <18.5) Entao
         Escreval ("Você está um pouco abaixo do peso sugerido. É recomendado consultar-se com um médico.")
      Senao
         Se (IMC >=18.5) e (IMC <25) Entao
            Escreval ("Seu peso é considerado ideal para a sua estatura.")
         Senao
            Se (IMC >=25) e (IMC <30) Entao
               Escreval ("Você está em sobrepeso. É recomendado consultar-se com um médico.")
            Senão
               Se (IMC >=30) e (IMC <35) Entao
                  Escreval ("Você encontra-se com obesidade. É recomendado consultar-se com um médico.")
               Senao
                  Se (IMC >=35) e (IMC <40) Entao
                     Escreval ("Você encontra-se com obesidade severa. É recomendado consultar-se com um médico.")
                  Senao
                     Escreval ("Você encontra-se com obesidade mórbida. É recomendado consultar-se com um médico.")
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
fimalgoritmo
