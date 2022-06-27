algoritmo "TesteTriangulos"
// autor: Luiz Nison Filler
// iniciativa própria
// rotina para analisar propriedades de triângulos
// ref utilizada: https://brasilescola.uol.com.br/matematica/classificacao-de-triangulos.htm

var
   Ae1, Ae2, Ae3, TotAe, Ai1, Ai2, Ai3, TotAi, L1, L2, L3, base, altura, A, Ab1, AB2, B1, B2: real
   nome, resp: caractere
   QLs, REt: inteiro

Procedimento TabelaEtapa()
Inicio
   Escreval ("------------------------------------------------------------")
   Escreval ("A seguir estão as etapas que realizaremos: ")
   Escreval ("[1] Verificar se a figura geométrica é realmente um triângulo.")
   Escreval ("[2] Classificar o triângulo quanto aos ÂNGULOS.")
   Escreval ("[3] Classificar o triângulo quanto aos LADOS.")
   Escreval ("[4] Calcular área do triângulo.")
   Escreval ("------------------------------------------------------------")
FimProcedimento

Procedimento LimpezaTela()
Inicio
   Escreva ("Deseja limpar tela? [S/N] ")
   Leia (resp)
   Se (resp = "S") entao
      LimpaTela
      TabelaEtapa()
   FimSe
FimProcedimento

Procedimento NaoTri()
Inicio
   Escreval ("Já que sabemos que NÃO é um triângulo, então terminaremos a verificação por aqui.")
   Escreval ("Muito obrigado e volte sempre!")
FimProcedimento

Procedimento VerificaTri()
Inicio
   Escreval ("Esta etapa consiste em três condições que devem ser concomitantemente verdadeiras.")
   Escreval ("Primeiro, verificaremos a soma dos lados da figura, depois a soma dos ângulos externos e, por último, a soma dos ângulos internos.")
   Escreval ("Então, agora nos atentaremos no resultado da soma dos lados da figura.")
   Escreva ("A sua figura possui quantos lados? ")
   Leia (QLs)
   Se (Qls <> 3) entao
      Escreval ("A figura NÃO pode ser classificada como triângulo por possuir",QLs," lados.")
      NaoTri()
   FimSe
   Se (Qls = 3) entao
      Escreva ("Você possui as medidas dos três lados da figura? [S/N] ")
      Leia (resp)
      Se (resp = "N") entao
         Escreval ("Então NÃO podemos ter muita certeza se realmente é um triângulo.")
         NaoTri()
      FimSe
      Se (resp = "S") entao
         Escreva ("Digite a medida do primeiro lado. ")
         Leia (L1)
         Escreva ("Digite a medida do segundo lado. ")
         Leia (L2)
         Escreva ("Digite a medida do terceiro lado. ")
         Leia (L3)
         Se (L1>(L2+L3)) E (L2>(L1+L3)) E (L3>(L1+L2)) entao
            Escreval ("Parabéns! O primeiro elemento necessário para uma figura ser considerada um triângulo foi contemplado.")
            Escreval ("Agora, nos atentaremos no resultado da soma dos ângulos externos.")
            Escreva ("Você possui as medidas dos ângulos externos? [S/N] ")
            Leia (resp)
            Se (resp = "N") entao
               Escreval ("Então não podemos ter muita certeza se realmente é um triângulo.")
               NaoTri()
            senao
               Escreva ("Digite a medida do primeiro ângulo externo. ")
               Leia (Ae1)
               Escreva ("Digite a medida do segundo ângulo externo. ")
               Leia (Ae2)
               Escreva ("Digite a medida do terceiro ângulo externo. ")
               Leia (Ae3)
               TotAe <- Ae1 + Ae2 + Ae3
               Se (TotAe <> 360) entao
                  Escreval ("A soma dos três ângulos externos foi de: ",TotAe, "º. Portanto, a figura geométrica NÃO é um triângulo.")
                  NaoTri()
               FimSe
               Se (TotAe = 360) entao
                  Escreval ("Ótimo! A soma dos três ângulos externos foi de: ",TotAe, "º. Então prosseguiremos para a última verificação da etapa 1 para ver se a figura geométrica é realmente um triângulo.")
               FimSe
            FimSe
            Escreval ("Por fim, verificaremos por meio do resultado da soma dos ângulos internos se a figura é um triângulo.")
            Escreva ("Você possui as medidas dos ângulos internos? [S/N] ")
            Leia (resp)
            Se (resp = "N") entao
               Escreval ("Então não podemos ter muita certeza se realmente é um triângulo.")
               NaoTri()
            senao
               Escreva ("Digite a medida do primeiro ângulo interno. ")
               Leia (Ai1)
               Escreva ("Digite a medida do segundo ângulo interno. ")
               Leia (Ai2)
               Escreva ("Digite a medida do terceiro ângulo interno. ")
               Leia (Ai3)
               TotAi <- Ai1 + Ai2 + Ai3
               Se (TotAi <> 180) entao
                  Escreval ("A soma dos três ângulos internos foi de: ",TotAi, "º. Portanto, a figura geométrica NÃO é um triângulo.")
                  NaoTri()
               FimSe
               Se (TotAi = 180) entao
                  Escreval ("Ótimo! A soma dos três ângulos internos foi de: ",TotAi,"º.")
               FimSe
               Escreval ("Sendo assim, a figura É UM TRIÂNGULO.")
               Escreval ("Então agora é a hora de classificar esse triângulo.")
            FimSe
         senao
            Escreval ("Poxa vida! A sua figura NÃO pode ser considerada um triângulo.")
            NaoTri()
         FimSe
      FimSe
   FimSe
FimProcedimento

Procedimento ClassiAnguloTri()
Inicio
   Escreval ("Este é o momento de classificarmos o seu triângulo por meio dos seus ângulos.")
   Escreva ("Digite o primeiro ângulo. ")
   Leia (Ai1)
   Escreva ("Digite o segundo ângulo. ")
   Leia (Ai2)
   Escreva ("Digite o terceiro ângulo. ")
   Leia (Ai3)
   Se (Ai1 < 90) E (Ai2 < 90) E (Ai3 < 90) entao
      Escreval ("O triângulo é OCUTÂNGULO, pois seus três ângulos internos são agudos, ou seja, menores que 90º.")
   senao
      Se ((Ai1 = 90) E (Ai2 < 90) E (Ai3 < 90)) OU ((Ai1 < 90) E (Ai2 = 90) E (Ai3 < 90)) OU ((Ai1 < 90) E (Ai2 < 90) E (Ai3 = 90)) entao
         Escreval ("O triângulo é RETÂNGULO, pois um de seus ângulos é reto, ou seja, possui 90º e os outros dois ângulos são agudos, ou seja, menores que 90º.")
      senao
         Se ((Ai1 > 90) E (Ai2 < 90) E (Ai3 < 90)) OU ((Ai1 < 90) E (Ai2 > 90) E (Ai3 < 90)) OU ((Ai1 < 90) E (Ai2 < 90) E (Ai3 > 90)) entao
            Escreval ("O triângulo é OBTUSÂNGULO, pois um de seus ângulos é obtuso, ou seja, maior que 90º e os outros dois ângulos são agudos, ou seja, menores que 90º.")
         FimSe
      FimSe
   FimSe
FimProcedimento

Procedimento ClassiLadoTri()
Inicio
   Escreval ("Nesta etapa classificaremos o triângulo por meio das medidas dos seus lados.")
   Escreva ("Digite a medida do primeiro lado. ")
   Leia (L1)
   Escreva ("Digite a medida do segundo lado. ")
   Leia (L2)
   Escreva ("Digite a medida do terceiro lado. ")
   Leia (L3)
   Escreval ("Agora, precisamos das medidas dos ângulos.")
   Escreva ("Digite a medida do primeiro ângulo interno. ")
   Leia (Ai1)
   Escreva ("Digite a medida do segundo ângulo interno. ")
   Leia (Ai2)
   Escreva ("Digite a medida do terceiro ângulo interno. ")
   Leia (Ai3)
   Se (L1 <> L2) E (L2 <> L3) E (L1 <> L3) entao
      Escreval ("A partir das medidas dos lados do triângulo, podemos classificá-lo como sendo ESCALENO.")
      Escreval ("Um triângulo ESCALENO possui diferentes medidas para todos os seus três lados.")
   senao
      Se ((L1 = L2) E (L2 = L3)) OU ((L1 = L2) E (L1 <> L3)) OU ((L1 <> L2) E (L2 = L3)) OU ((L1 <> L2) E (L2 <> L3) E (L1 = L3)) entao
         Escreval ("A partir das medidas dos lados do triângulo, podemos classificá-lo como sendo ISÓSCELES.")
         Escreval ("Um triângulo ISÓSCELES possui pelo menos dois lados congruentes, ou seja, com medidas iguais.")
         Escreval ("No entanto, há mais duas propriedades especiais que devem ser contempladas para o triângulo ser considerado ISÓSCELES.")
         Escreval ("As realizaremos na seguinte ordem:")
         Escreval ("[1] -> Ângulos da base são sempre iguais.")
         Escreval ("[2] -> Ao traçar uma reta 'h', ela divide a base em duas partes com medidas iguais.")
         Escreva ("Digite, novamente, o primeiro ângulo da base. ")
         Leia (Ab1)
         Escreva ("Digite, novamente, o segundo ângulo da base. ")
         Leia (Ab2)
         Se (Ab1 = Ab2) entao
            Escreval ("A primeira propriedade especial do triângulo isósceles foi contemplada.")
         senao
            Escreval ("A primeira propriedade especial do triângulo isósceles NÃO foi contemplada, portanto, não pode ser classificado como tal.")
         FimSe
         Escreva ("Após traçar a reta 'h' (altura) a partir da base, qual é a medida da primeira metade da base. ")
         Leia (B1)
         Escreva ("E qual é a medida da segunda metade da base? ")
         Leia (B2)
         Se (B1 = B2) entao
            Escreval ("A segunda propriedade especial do triângulo isósceles foi contemplada.")
         senao
            Escreval ("A segunda propriedade especial do triângulo isósceles NÃO foi contemplada, portanto, não pode ser classificado como tal.")
            Se (Ab1 = AB2) E (B1 = B2) entao
               Escreval ("Que legal! Então esse triângulo pode ser considerado como sendo ISÓSCELES.")
            senao
               Escreval ("Esse triângulo NÃO pode ser considerado ISÓSCELES.")
            FimSe
         FimSe
      senao
         Se ((L1 = L2) E (L2 = L3)) E ((Ai1 = 60) E (Ai2 = Ai1) E (Ai3 = Ai1)) entao
            Escreval ("Que massa! Então esse triângulo pode ser considerado como sendo EQUILÁTERO.")
         FimSe
      FimSe
   FimSe
FimProcedimento

Procedimento AreaTriangulo()
Inicio
   Escreva ("Digite o comprimento da base do triângulo. ")
   Leia (base)
   Escreva ("Digite a altura do triângulo. ")
   Leia (altura)
   A <- (base*altura)/2
   Escreval ("A área do triângulo é: ",A)
FimProcedimento

inicio
   Escreva ("Olá! Qual é o seu nome? ")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "!")
   Escreval ("Eu te ajudarei a conhecer mais sobre o mundo dos triângulos.")
   TabelaEtapa()
   VerificaTri()
   Se (Qls = 3)  E (L1>(L2+L3)) E (L2>(L1+L3)) E (L3>(L1+L2)) E (TotAe = 360) E (TotAi = 180) entao
      ClassiAnguloTri()
      ClassiLadoTri()
      AreaTriangulo()
   FimSe
   TabelaEtapa()
   Escreva ("Deseja realizar alguma etapa novamente? [S/N] ")
   Leia (resp)
   Enquanto (resp = "S") faca
      Escreva ("Digite o número da etapa que deseja realizar. ")
      Leia (REt)
      Escolha REt
      Caso 1
         Repita
            VerificaTri()
            // Aqui posso colocar a possibilidade de a pessoa continuar na ordem das etapas ou ela selecionar qual etapa realizar no momento.
            Escreva ("Deseja repetir essa etapa? [S/N] ")
            Leia (resp)
         Ate (resp = "N")
         LimpezaTela()
      Caso 2
         Repita
            ClassiAnguloTri()
            // Aqui posso colocar a possibilidade de a pessoa continuar na ordem das etapas ou ela selecionar qual etapa realizar no momento.
            Escreva ("Deseja repetir essa etapa? [S/N] ")
            Leia (resp)
         Ate (resp = "N")
         LimpezaTela()
      Caso 3
         Repita
            ClassiLadoTri()
            Escreva ("Deseja repetir essa etapa? [S/N] ")
            Leia (resp)
         Ate (resp = "N")
         LimpezaTela()
      Caso 4
         Repita
            AreaTriangulo()
            Escreva ("Deseja repetir essa etapa? [S/N] ")
            Leia (resp)
         Ate (resp = "N")
         LimpezaTela()
      FimEscolha
   FimEnquanto
   Escreval ("Muito obrigado e volte sempre.")
fimalgoritmo
