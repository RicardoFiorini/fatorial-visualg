# ❗ Calculadora de Fatorial em Portugol

Este é um algoritmo clássico em Portugol que calcula o fatorial (`n!`) de um número inteiro não-negativo fornecido pelo usuário.

O maior desafio de um cálculo de fatorial não é o loop, mas o **estouro de capacidade (overflow)** das variáveis. Este projeto foi escrito com foco em resolver esse problema, tornando-o robusto para entradas com resultados grandes.

## ✨ Funcionalidades

* **Cálculo de Fatorial:** Implementa a lógica `n! = n * (n-1) * ... * 1`.
* **Tratamento de Overflow (Uso de `real`):** Esta é a melhoria mais importante. O fatorial cresce exponencialmente. O fatorial de 13 (13!) já ultrapassa 6 bilhões, estourando o limite de uma variável `inteiro` padrão (que só vai até ~2 bilhões). Ao usar `real` para armazenar o resultado, o programa consegue calcular fatoriais muito maiores (como 20!, 30!, etc.), exibindo o resultado em notação científica se necessário.
* **Validação de Entrada:** O programa força o usuário a inserir um número válido (maior ou igual a zero), pois o fatorial não é definido para inteiros negativos.
* **Caso Base (0!):** O programa lida corretamente com o caso de `0!`, cujo resultado é `1`.
* **Código Modular:** A lógica de cálculo é isolada na função `calcularFatorial()`.
* **Loop de Replay:** O usuário pode calcular múltiplos fatoriais em sequência.

## 🚀 O Perigo do "Overflow"

Muitos programas de fatorial iniciantes falham no teste do `13!`.

* **12!** = 479.001.600 (Cabe em um `inteiro`)
* **13!** = 6.227.020.800 (Não cabe em um `inteiro` de 32 bits!)

Um programa que usa `inteiro` para calcular `13!` geralmente retorna um número negativo ou incorreto. Este algoritmo resolve isso usando `real`, garantindo a precisão matemática para números maiores.

## 🚀 Como Executar

1.  **Ambiente:** Utilize um interpretador de Portugol como o [VisualG](httpsa://visualg3.com.br/) ou o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Download:** Copie o código do arquivo `Calculador_de_Fatorial_Melhorado.alg`.
3.  **Executar:** Abra o arquivo no interpretador e inicie a execução (normalmente com `F9`).
