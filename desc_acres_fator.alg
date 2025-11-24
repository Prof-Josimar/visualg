Algoritmo "FatorAcresDesc_PRG"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

Var
   valor : real
   percentagem : real
   operacao : caractere
   resultado : real

funcao FatorAcresDesc(vlr, pct : real; op : caractere) : real
inicio
   se op = "D" entao
      retorne vlr * (1 - (pct / 100))
   senao
      retorne vlr * (1 + (pct / 100))
   fimse
fimfuncao


Inicio
   // Entrada de dados
   escreva("Digite o valor: ")
   leia(valor)

   escreva("Digite a porcentagem (%): ")
   leia(percentagem)

   // Validação da operação (somente A ou D)
   repita
      escreva("Digite a operação (A para acréscimo ou D para desconto): ")
      leia(operacao)
      operacao := maiusc(operacao)
   ate (operacao = "A") ou (operacao = "D")

   // Chamada da função
   resultado := FatorAcresDesc(valor, percentagem, operacao)

   escreval("")
   escreval("Resultado da operação: ", resultado)

Fimalgoritmo
