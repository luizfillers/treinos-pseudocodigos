algoritmo "CorrigindoProvas"
//autor: Luiz Nison Filler
//disciplina: Algoritmo - Curso em Vídeo
// rotina para corrigir prova e calcular notas e média da turma

var
   gab: vetor [1..5] de caractere
   nome: vetor [1..3] de caractere
   respAluno: vetor [1..5] de caractere
   nota: vetor [1..3] de real
   aluno: inteiro
   soma, media: real

Procedimento CadGabarito()
var
   cont: inteiro
Inicio
   Escreval (" PASSO 1 - Cadastro de Gabarito")
   Escreval ("-------------------------------")
   Escreval ("A seguir, digite as alternativas corretas das questões")
   Para cont <- 1 ate 5 faca
      Escreva ("Questão ", cont, ": ")
      Leia (gab[cont])
   FimPara
FimProcedimento

Funcao CadProva() : real
var
   cont: inteiro
   notaFinal: real
Inicio
   notaFinal <- 0
   Escreval ("RESPOSTAS DADAS")
   Para cont <- 1 ate 5 faca
      Escreva ("Questão ", cont, ": ")
      Leia (respAluno[cont])
      Se (Maiusc(respAluno[cont]) = Maiusc(gab[cont])) entao
         notaFinal <- notaFinal + 2
      FimSe
   FimPara
   Retorne notaFinal
FimFuncao

inicio
   CadGabarito()

   Para aluno <- 1 ate 3 faca
      LimpaTela
      Escreval ("------------------------------")
      Escreval (" ALUNO ", aluno)
      Escreval ("------------------------------")
      Escreva ("Nome: ")
      Leia (nome[aluno])
      nota[aluno] <- CadProva()
      soma <- soma + nota[aluno]
   FimPara

   LimpaTela
   Escreval (" NOTAS FINAIS ")
   Escreval ("------------------------------")
   Para aluno <- 1 ate 3 faca
      Escreval (nome[aluno]:12, nota[aluno]:4:1)
   FimPara
   media <- soma/3
   Escreval ("------------------------------")
   Escreva ("Media da Turma: ", media:4:1)

fimalgoritmo
