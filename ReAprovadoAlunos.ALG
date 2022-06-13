algoritmo "ReAprovadoAlunos"
// rotina para declarar se um aluno, baseado na média de suas notas, está aprovado ou reprovado na disciplina.

var
   N1, N2, media: real
   nome_aluno: caractere

inicio
   Escreval ("Digite o nome do aluno a ser avaliado?")
   Leia (nome_aluno)
   Escreval ("Digite a primeira nota do(a) ", nome_aluno)
   Leia (N1)
   Escreval ("Agora digite a segunda nota do(a) ", nome_aluno)
   Leia (N2)
   media <- (N1+N2)/2
   Se (media >=7) Entao
      Escreval ("A média das duas notas do(a) ", nome_aluno, " é: ", media, ". Portanto, está APROVADO(A).")
   Senao
      Se (media >=5) e (media <7) Entao
         Escreval ("A média das duas notas do(a) ", nome_aluno, " é: ", media, ". Portanto, está de RECUPERAÇÃO.")
      Senao
         Escreval ("A média das duas notas do(a) ", nome_aluno, " é: ", media, ". Portanto, está REPROVADO(A).")
      FimSe
   FimSe
   
fimalgoritmo