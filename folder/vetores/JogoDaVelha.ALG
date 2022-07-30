Algoritmo "JogoVelha"
// autor: Luiz Nison Filler
// disciplina: Algoritmo - Curso em Vídeo
// rotina para jogar o Jogo da Velha

Var
   v: vetor[1..3, 1..3] de caractere
   L, C, Cont, Po: inteiro
   Simb, Resp: caractere
   R: logico

Procedimento EstruturaVelha()
Inicio
   Escreval ("+---+---+---+")
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Escreva ("|  ", v[L,C]:1)
      FimPara
      Escreva ("|")
      Escreval ()
      Escreval ("+---+---+---+")
   FimPara
FimProcedimento

Procedimento MudaJogador()
Inicio
   Se (Simb = "X") entao
      Simb <- "O"
   senao
      Simb <- "X"
   FimSe
FimProcedimento

Funcao Jogar(S: caractere; P: inteiro): logico
Var Mudou: logico
Inicio
   Mudou <- falso
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Se (v[L,C] = NumpCarac(P)) entao
            v[L,C] <- S
            Mudou <- verdadeiro
         FimSe
      FimPara
   FimPara
   Retorne Mudou
FimFuncao

Funcao TerminouVelha(): Logico
Var
   Terminou: Logico
   Ocorr: Inteiro
inicio
   Terminou <- falso
   Para L <- 1 ate 3 faca
      Se (v[L,1] = v[L,2]) e (v[L,2] = v[L,3]) entao
         Terminou <- verdadeiro
      FimSe
   FimPara

   Para C <- 1 ate 3 faca
      Se (v[1,C] = v[2,C]) e (v[2,C] = v[3,C]) entao
         Terminou <- verdadeiro
      FimSe
   FimPara

   Se (v[1,1] = v[2,2]) e (v[2,2] = v[3,3]) entao
      Terminou <- verdadeiro
   FimSe
   Se (v[1,3] = v[2,2]) e (v[2,2] = v[3,1]) entao
      Terminou <- verdadeiro
   FimSe

   Ocorr <- 0
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Se (v[L,C] <> "X") e (v[L,C] <> "O") entao
            Ocorr <- Ocorr + 1
         FimSe
      FimPara
   FimPara
   Se (Ocorr = 0) entao
      Terminou <- verdadeiro
   FimSe
   Retorne Terminou
FimFuncao

Inicio
   Repita
      Cont <- 1
      Simb <- "X"
      Para L <- 1 ate 3 faca
         Para C <- 1 ate 3 faca
            v[L,C] <- NumpCarac(Cont)
            Cont <- Cont + 1
         FimPara
      FimPara
      EstruturaVelha()
      Repita
         Repita
            EscrevaL("Vai jogar [", Simb:1, "] em qual posicao? ")
            Leia(Po)
            R <- Jogar(Simb, Po))
            Se (R = falso) entao
               EscrevaL("JOGADA INVALIDA!")
            FimSe
         Ate (R = verdadeiro)
         MudaJogador()
         LimpaTela
         EstruturaVelha()
      Ate (terminouVelha() = verdadeiro)
      Escreval(" JOGO FINALIZADO! ")
      Escreva ("Deseja jogar novamente? [S/N]")
      Leia (Resp)
      Se (Resp = "S") entao
         LimpaTela
      FimSe
   Até (Resp = "N")

Fimalgoritmo