Algoritmo "RelacaoPercentual"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/11/2025
var
   valorInicial, valorFinal, relacao : real

funcao RelacaoPercentual(inicial, final : real) : real
var
   variacao : real
inicio
   se inicial = 0 entao
      retorne 0 // evita divisão por zero
   fimse

   variacao := ((final - inicial) / inicial) * 100
   retorne variacao
fimfuncao

Inicio
   escreva("Digite o valor inicial: ")
   leia(valorInicial)

   escreva("Digite o valor final: ")
   leia(valorFinal)

   relacao := RelacaoPercentual(valorInicial, valorFinal)

   escreval("")

   se relacao > 0 entao
      escreval("Acréscimo de: ", relacao, " %")
   senao
      se relacao < 0 entao
         escreval("Desconto de: ", abs(relacao), " %")
      senao
         escreval("Não houve alteração.")
      fimse
   fimse


Fimalgoritmo