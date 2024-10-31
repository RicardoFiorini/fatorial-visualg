algoritmo "Calculador de Fatorial"
variáveis
    numero, i : inteiro
    fatorial : inteiro
início
    escreva("Digite um número para calcular o fatorial: ")
    leia(numero)

    // Inicializa o fatorial como 1
    fatorial ← 1

    // Loop para calcular o fatorial
    para i de 1 até numero faça
        fatorial ← fatorial * i  // Multiplica o valor atual de fatorial pelo índice
    fimpara

    // Exibe o resultado
    escreva("O fatorial de ", numero, " é: ", fatorial)
fimenquanto
