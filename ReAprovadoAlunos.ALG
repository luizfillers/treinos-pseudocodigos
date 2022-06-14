algoritmo "ReAprovadoAlunos"
// autor: Luiz Nison Filler
// rotina para declarar se um aluno, baseado na média de suas notas, está aprovado ou reprovado na disciplina e classificar o aproveitamento deste aluno

var
   N1, N2, media: real
   nome_aluno, aproveitamento: caractere

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
   Se (media <5) Entao
      Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota F.")
   senao
      Se (media >5) e (media <5.9) Entao
         Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota E.")
      senao
         Se (media >5.9) e (media <6.9) Entao
            Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota D.")
         senao
            Se (media >6.9) e (media <7.9) Entao
               Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota C.")
            senao
               Se (media >7.9) e (media <8.9) Entao
                  Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota B.")
               senao
                  Escreval ("E o aproveitamento do(a) ", nome_aluno, " é classificado pela nota A.")
              FimSe
           FimSe
        FimSe
     FimSe
   Fimse
   Escreval ("Muito obrigado. E volte sempre!")
   
fimalgoritmo
