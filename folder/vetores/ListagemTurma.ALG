algoritmo "ListagemTurma"
// autor: Luiz Nison Filler
// disciplina: Algoritmo - Curso em Vídeo
// rotina para fazer uma listagem de notas e médias dos alunos de uma turma

var
   nome: vetor [1..4] de caractere
   n1: vetor [1..4] de real
   n2: vetor [1..4] de real
   M: vetor [1..4] de real
   i, Tot: inteiro
   SM, MT: real

inicio
   Para i <- 1 ate 4 faca
      Escreval ("ALUNO ", i)
      Escreva ("Nome: ")
      Leia (nome[i])
      Escreva ("Primeira nota: ")
      Leia (n1[i])
      Escreva ("Segunda nota: ")
      Leia (n2[i])
      M[i] <- ((n1[i] + n2[i]) / 2)
   FimPara
   SM <- SM + M[i]
   MT <- SM / 4
   Escreval ("LISTAGEM DE ALUNOS")
   Escreval ("-------------------")
   Para i <- 1 ate 4 faca
      Escreval (nome[i]:13, M[i])
      Se (m[i] > MT) entao
         Tot <- Tot + 1
      FimSe
   FimPara
   Escreval ("Ao todo temos ", Tot, " alunos acima da media da turma, a qual é ", MT:4:1, ".")

fimalgoritmo
