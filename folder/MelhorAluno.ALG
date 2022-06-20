algoritmo "MelhorAluno"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para verificar qual foi o aluno com o melhor aproveitamento de uma turma
var
   Nt, cont: inteiro
   nome, MelhorAluno: caractere
   nota, MaiorNota: real

inicio
   Escreval ("-----------------------")
   Escreval ("Escola Santa Paciência")
   Escreval ("-----------------------")
   Escreva ("Quantos alunos há na turma? ")
   Leia (Nt)
   cont <- 1
   Enquanto (cont <= Nt) faca
      Escreval ("------------------")
      Escreval ("ALUNO ", cont)
      Escreva ("Nome do aluno: ")
      Leia (nome)
      Escreva ("Nota de ", nome, ": ")
      Leia (nota)
      Se (nota > MaiorNota) Entao
         MaiorNota <- nota
         MelhorAluno <- nome
      FimSe
      cont <- cont + 1
   FimEnquanto
   Escreval ("-----------------------")
   Escreval ("O melhor aproveitamento foi de ", melhorAluno, " com a nota: ", MaiorNota, ".")

fimalgoritmo