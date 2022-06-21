algoritmo "VerificadorAngulos"
// autor: Luiz Nison Filler
// rotina para classificar os angulos de retas
// ref utilizada: https://www.infoescola.com/matematica/angulos/#:~:text=%C3%82ngulo%20agudo%3A%20%C3%A2ngulo%20com%20medida,igual%20a%200%C2%BA%20ou%20180%C2%BA.

var
   ang, ang1, ang2, soma: real
   resp: caractere

inicio
   Repita
      Escreval ("Digite o ângulo que deseja ser classificado. ")
      Leia (ang)
      Se ((ang > 0) E (ang < 90)) Entao
         Escreval ("O ângulo de ", ang, "º é AGUDO.")
      senao
         Se (ang = 90) Entao
            Escreval ("O ângulo de ", ang, "º é RETO.")
         senao
            Se ((ang > 90) E (ang < 180)) Entao
               Escreval ("O ângulo de ", ang, "º é OBTUSO.")
            senao
               Se ((ang = 0) OU (ang = 180)) Entao
                  Escreval ("O ângulo de ", ang, "º é RASO.")
               senao
                  Se ((ang > 180) E (ang < 360)) Entao
                     Escreval ("O ângulo de ", ang, "º é CÔNCAVO.")
                  senao
                     Se (ang = 360) Entao
                        Escreval ("O ângulo de ", ang, "º é COMPLETO.")
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      Escreva ("Deseja verificar outro ângulo? [S/N] ")
      Leia (resp)
   Ate (resp = "N")
   Escreva ("Agora, deseja classificar mais de dois ângulos? [S/N] ")
   Leia (resp)
   Repita
      Se (resp = "S") Entao
         Escreva ("Digite o primeiro ângulo. ")
         Leia (ang1)
         Escreva ("Agora, digite o segundo ângulo. ")
         Leia (ang2)
         soma <- ang1 + ang2
         Se (soma = 90) Entao
            Escreval ("Os ângulos ", ang1, " e ", ang2, " são COMPLEMENTARES, pois o resultado da soma entre eles é igual a 90º.")
         senao
            Se (soma = 180) Entao
               Escreval ("Os ângulos ", ang1, " e ", ang2, " são SUPLEMENTARES, pois o resultado da soma entre eles é igual a 180º.")
            senao
               Se (soma = 360) Entao
                  Escreval ("Os ângulos ", ang1, " e ", ang2, " são REPLEMENTARES, pois o resultado da soma entre eles é igual a 360º.")
               senao
                  Se (((soma <>90) E (soma <> 180) E (soma <> 360))) Entao
                     Escreval ("O resultado da soma entre os ângulos ", ang1, " e ", ang2, " é igual a ", soma, " e, portanto, NÃO possui classificação.")
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      Escreval ("Deseja verificar outroS ânguloS? [S/N] ")
      Leia (resp)
   Até (resp = "N")
   Escreval ("Então até mais. Foi um prazer!")

fimalgoritmo