algoritmo "AnsiedadeEventos"
// autor: Luiz Nison Filler
// iniciativa própria
// rotina para controlar ansiedade para atendimentos
// ref utilizada: vozes da minha cabeça

var
   nome, resp: caractere
   diaH, horaH, minH, TotAt, cont, diaAt, horaAt, minAt, horaF, contDia: inteiro
   TotH, TotHAT, contH, minF, TotDec: real

Procedimento Semana()
Inicio
   Escreval ("------------------")
   Escreval ("[1] Domingo")
   Escreval ("[2] Segunda-feira")
   Escreval ("[3] Terça-feira")
   Escreval ("[4] Quarta-feira")
   Escreval ("[5] Quinta-feira")
   Escreval ("[6] Sexta-feira")
   Escreval ("[7] Sábado")
   Escreval ("------------------")
FimProcedimento

Procedimento Atendimentos(A: real; B: inteiro)
Inicio
   Escreval ("------------------")
   Escreval ("ATENDIMENTO", cont, ".")
   Escreval ("Qual será o dia do atendimento", cont, "? ")
   Semana()
   Leia (diaAt)
   Escreva ("Digite a hora que o Atendimento", cont, " começará. A seguir pedirei os minutos. ")
   Leia (horaAt)
   Escreva ("Digite os minutos que o Atendimento", cont, " começará. ")
   Leia (minAt)
   TotHAT <- (horaAt + (minAt/60))
   Escreval ("Consideraremos o período de 1 hora antes do atendimento como senndo um momento oportuno para começar a prepar o que for necessário para o Atendimento", cont, ".")
   contH <- TotHAT - A
   horaF <- int(contH)
   minF <- ((contH - horaF) * 60)
   contDia <- (diaAt - B)
   Se (B <> diaAt) E (contDia < 0) entao
      contDia <- contDia + 7
      TotDec <- ((contDia * 24) + (contH))
      Escreval ("Fique calmo(a)! O atendimento será só na semana que vem. E ele ocorrerá em", contDia, " dias ou, se preferir saber a quantidade de horas em decimal, ", TotDec:2:2, " horas.")
   senao
      Se (B <> diaAt) E (contDia > 0) entao
         TotDec <- ((contDia * 24) + (contH))
         Escreval ("Fique calmo(a)! O atendimento não é hoje! E ele ocorrerá em", contDia, " dias ou, se preferir saber a quantidade de horas em decimal, ", TotDec:2:2, " horas.")
      senao
         Se (B = diaAt) E (A = (TotHAt - 1 )) entao
            Escreval ("Opa. O atendimento começa logo logo! Talvez seja o momento de começar a se preparar para o Atendimento", cont, ".")
         senao
            Se ((contH < 0) E (horaF <= 0) OU (minF <= 0) E (contDia = 0)) entao
               Escreval ("Fique calmo(a)! O atendimento será no mesmo dia de hoje (", B, ") da semana que vem.")
            senao
               Escreval ("Ainda faltam", horaF,":",minF:2:0, " horas, ou em decimal: ", contH:2:2, " horas.")
               Escreval ("Então ainda há tempo! Não precisa ficar ansioso(a) a respeito desse atendimento.")
            FimSe
         FimSe
      FimSe
   FimSe
FimProcedimento

inicio
   Escreval ("Olá! Tentarei te auxiliar a visualizar melhor sua rotina de atendimentos e, assim, diminuir a ansiedade referente a eventos da sua vida.")
   Escreva ("Primeiro de tudo, como devo te chamar? ")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "! Então creio que podemos começar agora.")
   Escreval ("Qual dia é hoje mesmo? ")
   Semana()
   Leia (diaH)
   Escreva ("Digite apenas a hora de agora! A seguir pedirei os minutos. ")
   Leia (horaH)
   Escreva ("Agora digite os minutos. ")
   Leia (minH)
   TotH <- (horaH + (minH/60))
   Escreval ("O horário é: ",horaH,":",minH:2:0, ".")
   Escreval ("O horário em decimal é: ", TotH, ".")
   Escreva ("Quantos atendimentos você tem nessa semana? ")
   Leia (TotAt)
   cont <- 1
   Enquanto (cont < (TotAt + 1)) faca
      Atendimentos(TotH, diaH)
      Escreva ("Deseja limpar a tela? [S/N] ")
      Leia (resp)
      Se (resp = "S") entao
         LimpaTela
      FimSe
      cont <- cont + 1
   FimEnquanto

fimalgoritmo