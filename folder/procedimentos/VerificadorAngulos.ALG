algoritmo "VerificadorAngulos"
// autor: Luiz Nison Filler
// iniciativa própria
// rotina para classificar os angulos de retas
// ref utilizada: https://www.infoescola.com/matematica/angulos/#:~:text=%C3%82ngulo%20agudo%3A%20%C3%A2ngulo%20com%20medida,igual%20a%200%C2%BA%20ou%20180%C2%BA.

var
   ang, ang1, ang2, soma: real
   resp: caractere

Procedimento UmAngulo(A: real)
Inicio
   Se ((A > 0) E (A < 90)) Entao
      Escreval ("O ângulo de ", A, "º é AGUDO.")
   senao
      Se (A = 90) Entao
         Escreval ("O ângulo de ", A, "º é RETO.")
      senao
         Se ((A > 90) E (A < 180)) Entao
            Escreval ("O ângulo de ", A, "º é OBTUSO.")
         senao
            Se ((A = 0) OU (A = 180)) Entao
               Escreval ("O ângulo de ", A, "º é RASO.")
            senao
               Se ((A > 180) E (A < 360)) Entao
                  Escreval ("O ângulo de ", A, "º é CÔNCAVO.")
               senao
                  Se (A = 360) Entao
                     Escreval ("O ângulo de ", A, "º é COMPLETO.")
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
FimProcedimento

Procedimento DoisAngulos(A, B, S: real)
Inicio
   Se (S = 90) Entao
      Escreval ("Os ângulos ", A, " e ", B, " são COMPLEMENTARES, pois o resultado da soma entre eles é igual a 90º.")
   senao
      Se (S = 180) Entao
         Escreval ("Os ângulos ", A, " e ", B, " são SUPLEMENTARES, pois o resultado da soma entre eles é igual a 180º.")
      senao
         Se (S = 360) Entao
            Escreval ("Os ângulos ", A, " e ", B, " são REPLEMENTARES, pois o resultado da soma entre eles é igual a 360º.")
         senao
            Se (((S <> 90) E (S <> 180) E (S <> 360))) Entao
               Escreval ("O resultado da soma entre os ângulos ", A, " e ", B, " é igual a ", S, " e, portanto, NÃO possui classificação.")
            FimSe
         FimSe
      FimSe
   FimSe
FimProcedimento

inicio
   Repita
      Escreva ("Digite o ângulo que deseja ser classificado. ")
      Leia (ang)
      UmAngulo(ang)
      Escreva ("Deseja verificar outro ângulo? [S/N] ")
      Leia (resp)
   Ate (resp = "N")
   Escreva ("Agora, deseja classificar mais de dois ângulos? [S/N] ")
   Leia (resp)
   Se (resp = "N") entao
      Escreval ("Então até mais. Foi um prazer!")
   senao
      Repita
         Escreva ("Digite o primeiro ângulo. ")
         Leia (ang1)
         Escreva ("Agora, digite o segundo ângulo. ")
         Leia (ang2)
         soma <- ang1 + ang2
         DoisAngulos(ang1, ang2, soma)
         Escreva ("Deseja verificar outroS ânguloS? [S/N] ")
         Leia (resp)
      Até (resp = "N")
   FimSe
   Escreval ("Então até mais. Foi um prazer!")

fimalgoritmo
