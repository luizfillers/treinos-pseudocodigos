algoritmo "FizzBuzz"
// autor: Luiz Nison Filler
// iniciativa própria
// rotina para bincadeira de FizzBuzz
// ref utilizada: https://www.youtube.com/watch?v=QPZ0pIK_wsc

Var
   limite, cont, mult1, mult2: inteiro
   resp: caractere

Procedimento RegrasFizzBuzz()
Inicio
   Escreval ("----------------------------------------------")
   Escreval (" R  E  G  R  A  S ")
   Escreval ("[1] Será elegido um número limite para a contagem.")
   Escreval ("[2] Será escolhido um 1º número e depois um 2º número para saber quando será a hora de falar 'Fizz', 'Buzz' ou 'FizzBuzz'.")
   Escreval ("[3] Toda vez que o número da contagem for múltiplo do 1º número escolhido, então será falado 'Fizz'.")
   Escreval ("[4] Toda vez que o número da contagem for múltiplo do 2º número escolhido, então será falado 'Buzz'.")
   Escreval ("[5] Toda vez que o número da contagem for múltiplo do 1º E do 2º número escolhido, então será falado 'FizzBuzz'.")
   Escreval ("----------------------------------------------")
   Escreva ("Primeiro, digite até qual número devemos contar. ")
   Leia (limite)
   Escreva ("Agora é a hora de você digitar o 1º número. ")
   Leia (mult1)
   Escreva ("Boa! Agora, digite o 2º número. ")
   Leia (mult2)
FimProcedimento

Procedimento ContagemFizzBuzz()
Inicio
   cont <- 0
   Enquanto (cont <= limite) faca
      Se ((cont mod mult1) = 0) E ((cont mod mult2) = 0) entao
         Escreval ("FizzBuzz")
         cont <- cont + 1
      senao
         Se ((cont mod mult1) = 0) entao
            Escreval ("Fizz")
            cont <- cont + 1
         senao
            Se ((cont mod mult2) = 0) entao
               Escreval ("Buzz")
               cont <- cont + 1
            senao
               Escreval (cont)
               cont <- cont + 1
            FimSe
         FimSe
      FimSe
   FimEnquanto
FimProcedimento

inicio
   Escreval ("Olá! Que bom que se interessou pela brincadeira 'FizzBuzz'!")
   Escreval ("A seguir, serão descritas as regras da brincadeira.")
   RegrasFizzBuzz()
   ContagemFizzBuzz()
   Escreva ("Deseja brincar de novo? [S/N] ")
   Leia (resp)
   Enquanto (resp = "S") faca
      Escreva ("Deseja limpar a tela? [S/N] ")
      Leia (resp)
      Se (resp = "S") entao
         LimpaTela
      FimSe
      RegrasFizzBuzz()
      ContagemFizzBuzz()
      Escreva ("Ainda deseja continuar a brincar? [S/N] ")
      Leia (resp)
   FimEnquanto

FimAlgoritmo
