algoritmo "FizzBuzz"
// autor: Luiz Nison Filler
// iniciativa própria
// rotina para bincadeira de FizzBuzz
// ref utilizada: https://www.youtube.com/watch?v=QPZ0pIK_wsc

Var
   cont: inteiro

Inicio
   cont <- 0
   Enquanto (cont <= 100) faca
      Se ((cont mod 3) = 0) E ((cont mod 5) = 0) entao
         Escreval ("FizzBuzz")
         cont <- cont + 1
      senao
         Se ((cont mod 3) = 0) entao
            Escreval ("Fizz")
            cont <- cont + 1
         senao
            Se ((cont mod 5) = 0) entao
               Escreval ("Buzz")
               cont <- cont + 1
            senao
               Escreval (cont)
               cont <- cont + 1
            FimSe
         FimSe
      FimSe
   FimEnquanto

FimAlgoritmo
