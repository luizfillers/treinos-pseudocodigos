algoritmo "AnsiedadeEventos"
// autor: Luiz Nison Filler
// iniciativa pr�pria
// rotina para controlar ansiedade para atendimentos
// ref utilizada: vozes da minha cabe�a

var
   nome, resp: caractere
   diaH, horaH, minH, TotAt, cont, diaAt, horaAt, minAt, horaF, contDia: inteiro
   TotH, TotHAT, contH, minF, TotDec: real

Procedimento Semana()
Inicio
   Escreval ("------------------")
   Escreval ("[1] Domingo")
   Escreval ("[2] Segunda-feira")
   Escreval ("[3] Ter�a-feira")
   Escreval ("[4] Quarta-feira")
   Escreval ("[5] Quinta-feira")
   Escreval ("[6] Sexta-feira")
   Escreval ("[7] S�bado")
   Escreval ("------------------")
FimProcedimento

Procedimento Atendimentos(A: real; B: inteiro)
Inicio
   Escreval ("------------------")
   Escreval ("ATENDIMENTO", cont, ".")
   Escreval ("Qual ser� o dia do atendimento", cont, "? ")
   Semana()
   Leia (diaAt)
   Escreva ("Digite a hora que o Atendimento", cont, " come�ar�. A seguir pedirei os minutos. ")
   Leia (horaAt)
   Escreva ("Digite os minutos que o Atendimento", cont, " come�ar�. ")
   Leia (minAt)
   TotHAT <- (horaAt + (minAt/60))
   Escreval ("Consideraremos o per�odo de 1 hora antes do atendimento como senndo um momento oportuno para come�ar a prepar o que for necess�rio para o Atendimento", cont, ".")
   contH <- TotHAT - A
   horaF <- int(contH)
   minF <- ((contH - horaF) * 60)
   contDia <- (diaAt - B)
   Se (B <> diaAt) E (contDia < 0) entao
      contDia <- contDia + 7
      TotDec <- ((contDia * 24) + (contH))
      Escreval ("Fique calmo(a)! O atendimento ser� s� na semana que vem. E ele ocorrer� em", contDia, " dias ou, se preferir saber a quantidade de horas em decimal, ", TotDec:2:2, " horas.")
   senao
      Se (B <> diaAt) E (contDia > 0) entao
         TotDec <- ((contDia * 24) + (contH))
         Escreval ("Fique calmo(a)! O atendimento n�o � hoje! E ele ocorrer� em", contDia, " dias ou, se preferir saber a quantidade de horas em decimal, ", TotDec:2:2, " horas.")
      senao
         Se (B = diaAt) E (A = (TotHAt - 1 )) entao
            Escreval ("Opa. O atendimento come�a logo logo! Talvez seja o momento de come�ar a se preparar para o Atendimento", cont, ".")
         senao
            Se ((contH < 0) E (horaF <= 0) OU (minF <= 0) E (contDia = 0)) entao
               Escreval ("Fique calmo(a)! O atendimento ser� no mesmo dia de hoje (", B, ") da semana que vem.")
            senao
               Escreval ("Ainda faltam", horaF,":",minF:2:0, " horas, ou em decimal: ", contH:2:2, " horas.")
               Escreval ("Ent�o ainda h� tempo! N�o precisa ficar ansioso(a) a respeito desse atendimento.")
            FimSe
         FimSe
      FimSe
   FimSe
FimProcedimento

inicio
   Escreval ("Ol�! Tentarei te auxiliar a visualizar melhor sua rotina de atendimentos e, assim, diminuir a ansiedade referente a eventos da sua vida.")
   Escreva ("Primeiro de tudo, como devo te chamar? ")
   Leia (nome)
   Escreval ("Prazer em te conhecer, ", nome, "! Ent�o creio que podemos come�ar agora.")
   Escreval ("Qual dia � hoje mesmo? ")
   Semana()
   Leia (diaH)
   Escreva ("Digite apenas a hora de agora! A seguir pedirei os minutos. ")
   Leia (horaH)
   Escreva ("Agora digite os minutos. ")
   Leia (minH)
   TotH <- (horaH + (minH/60))
   Escreval ("O hor�rio �: ",horaH,":",minH:2:0, ".")
   Escreval ("O hor�rio em decimal �: ", TotH, ".")
   Escreva ("Quantos atendimentos voc� tem nessa semana? ")
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