algoritmo "EscolhendoPessoas"
// autor: Luiz Nison Filler
// disciplina: Algoritmos - Curso em Vídeo
// rotina para fazer a contagem de pessoas a depender de características prédeterminadas
// H: >18anos E Castanho | M: >25 e <30anos E Loiras

var
   sexo, resp: caractere
   idade, cabelo, H, M: inteiro

inicio
   Repita
      Escreval ("========================")
      Escreva ("Qual o sexo? [M/F] ")
      Leia (sexo)
      Escreva ("Qual a idade? ")
      Leia (idade)
      Escreval ("Qual a cor do cabelo? ")
      Escreval ("------------------------")
      Escreval ("[1] Preto")
      Escreval ("[2] Castanho")
      Escreval ("[3] Loiro")
      Escreval ("[4] Ruivo")
      Leia (cabelo)
      Escreval ("Quer continuar? [S/N] ")
      Leia (resp)
      LimpaTela
      Se (sexo = "M") E (idade > 18) E (cabelo = 2) Entao
         H <- H + 1
      FimSe
      Se (sexo = "F") E ((idade > 25) E (idade < 30)) E (cabelo = 3) Entao
         M <- M + 1
      FimSe
   Ate (resp = "N")
   EscrevaL("------------------------------------")
   EscrevaL(" RESULTADO FINAL ")
   EscrevaL("------------------------------------")
   Escreval ("Total de homens com mais de 18 e cabelos castanhos é: ", H, ".")
   Escreval ("Total de mulheres entre 25 e 30 e cabelos loiros é: ", M, ".")


fimalgoritmo
