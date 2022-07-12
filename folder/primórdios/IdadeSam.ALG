algoritmo "IdadeSam"
// rotina para calcular a idade do Sam para que ele possa comprar a quantidade correta de velinhas para seu aniversário.

var
   ano_nascimento, ano_atual, idade: inteiro

inicio
      Escreval ("Oh não, minha amnesia me pegou de novo!!")
      Escreval ("Me ajude, por favor. Em que ano estamos?")
      Leia (ano_atual)
      Escreval ("Caramba! Mas o tempo passa rápido, não?!")
      Escreval ("E em qual ano eu nasci?")
      Leia (ano_nascimento)
      Escreval ("Hmmm... Espera um pouquinho porque eu sou de humanas!")
      idade <- (ano_atual - ano_nascimento)
      Escreval ("Aha! Eu tenho", (idade), " anos !")
      Se (idade >=18) Entao
         Escreval ("Wow! E eu já estou na maioridade!")
      FimSe
      Escreval ("Muito obrigado! Agora conseguirei comprar a quantidade de velinhas certas para o meu aniversário.")

fimalgoritmo
