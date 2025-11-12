algoritmo "Calculador_de_Fatorial_Melhorado"
// Autor: Ricardo Fiorini Cuato (Baseado no código original)
// Data: 12/11/2025
// Descrição: Calcula o fatorial usando 'real' para evitar overflow
//            e valida a entrada para números não-negativos.

var
   numeroUsuario: inteiro
   continuar: caractere

//-------------------------------------------------------------
// FUNÇÃO: calcularFatorial
// Objetivo: Calcula o fatorial de um número.
// Importante: Retorna 'real' para suportar números
//             extremamente grandes e evitar 'overflow'.
//-------------------------------------------------------------
funcao calcularFatorial(num: inteiro): real
var
   // 'fatorial' PRECISA ser 'real' para aguentar o cálculo.
   fatorial: real
   i: inteiro
inicio
   // Inicializa o fatorial como 1.0 (número real)
   fatorial := 1.0

   // O fatorial de 0 é 1.
   // Se 'num' for 0, o loop 'para i de 1 ate 0' não
   // executa, e a função retorna '1.0' (correto).

   // Loop para calcular o fatorial
   para i de 1 ate num faca
      fatorial := fatorial * i
   fimpara

   retorne fatorial
fimfuncao

//-------------------------------------------------------------
// BLOCO PRINCIPAL
//-------------------------------------------------------------
inicio
   // Loop principal para repetir o programa
   repita
      limpatela()
      escreval("--- Calculadora de Fatorial ---")

      // --- Validação de Entrada ---
      // Fatorial não é definido para números negativos.
      repita
         escreva("Digite um número inteiro (0 ou maior): ")
         leia(numeroUsuario)
         
         se (numeroUsuario < 0) entao
            escreval("Erro! O número não pode ser negativo.")
         fimse
      ate (numeroUsuario >= 0)

      // Exibe o resultado
      escreval
      escreval("Calculando ", numeroUsuario, "! ...")
      
      // O resultado pode aparecer em notação científica (ex: 1.23e+10)
      // se for muito grande, o que é o comportamento esperado.
      escreval("O fatorial de ", numeroUsuario, " é: ", calcularFatorial(numeroUsuario))
      escreval

      escreva("Deseja calcular outro fatorial? (S/N): ")
      leia(continuar)

   ate (maiusc(continuar) = "N")

   limpatela()
   escreval("Obrigado por usar a calculadora.")
fimalgoritmo
