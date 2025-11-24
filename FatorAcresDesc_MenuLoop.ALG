Algoritmo "FatorAcresDesc_MenuLoop"

// Variáveis gerais
Var
   valor : real
   percentagem : real
   operacao : caractere
   resultado : real
   opcaoMenu : inteiro

// ----------------------------------------
// Função com parâmetros
// ----------------------------------------
funcao FatorAcresDesc(vlr, pct : real; op : caractere) : real
inicio
   se op = "D" entao
      retorne vlr * (1 - (pct / 100))
   senao
      retorne vlr * (1 + (pct / 100))
   fimse
fimfuncao

// ----------------------------------------
// Procedimento para mostrar o menu
// ----------------------------------------
procedimento MostrarMenu()
inicio
   escreval("========================================")
   escreval("      SISTEMA DE ACRÉSCIMO / DESCONTO   ")
   escreval("========================================")
   escreval("1 - Calcular acréscimo/desconto")
   escreval("2 - Sobre o programa")
   escreval("0 - Sair")
   escreval("========================================")
fimprocedimento


// ----------------------------------------
// Programa Principal
// ----------------------------------------
Inicio

   repita

      MostrarMenu()
      escreva("Escolha uma opção: ")
      leia(opcaoMenu)

      escolha opcaoMenu

         // -----------------------------------------
         caso 1
              escreval("")
              escreval("===== Cálculo de Acréscimo / Desconto =====")

              escreva("Digite o valor: ")
              leia(valor)

              escreva("Digite a porcentagem (%): ")
              leia(percentagem)

              // Validação da operação
              repita
                 escreva("Digite a operação (A = acréscimo | D = desconto): ")
                 leia(operacao)
                 operacao := maiusc(operacao)
              ate (operacao = "A") ou (operacao = "D")

              resultado := FatorAcresDesc(valor, percentagem, operacao)

              escreval("Resultado da operação: ", resultado)
         // -----------------------------------------

         caso 2
              escreval("")
              escreval("Este programa demonstra o uso de funções,")
              escreval("procedimentos e estruturas de repetição.")
              escreval("Professor: Antonio Carlos Nicolodi")

         // -----------------------------------------

         caso 0
              escreval("Encerrando o programa...")

         // -----------------------------------------

         outrocaso
              escreval("Opção inválida! Tente novamente.")

      fimescolha

      escreval("")  // linha em branco

   ate (opcaoMenu = 0)

Fimalgoritmo
