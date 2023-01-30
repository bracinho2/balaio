# Resumo "Código Limpo"

## Capítulo 04 - Comentários

***Não insira comentários num codigo ruim, reescreva-o.***

- Comentários (...) De fato, eles são, no mãximo, um mal necessário.
- O uso adequado de comentários é compensar nosso faracasso em nos expressar no código.

- Importante:

>Então, quando você estiver numa istuação na qual precise criar um comentário, pense
>bem e veja se não há como se expressar através do código em si. Toda vez que você 
>fizer isso, dê em si mesmo um tapinha de aprovação nas costas. toda vez que você 
>escrever um comentário, faça uma careta e sina o fracasso de sua capacidade de 
>expressão.

- A verdade...

>Só se pode encontrar a verdade em um lugar: no código. Sõ ele pode realmente lhe 
>dizer o que ele faz. Ele é a única fonte de informações verdadeiramente precisas. 
>Entretanto, embora às vezes comentários sejam necessários, gastaríamos energia 
>considerável para minimizá-los.

- Pois...

>Códigos claros e expressivos com poucos comentários são de longe superiores a um 
>amontoado e complexo com muito comentários. Ao invés de gastar seu tempo criando 
>comentários para explicar a bagunça que você fez, **use-a para limpar esta zona**.

**Tenha em mente, contudo, que o único comentário verdadeiramente bom é aquele em que você encontrou uma forma para não escrevê-lo**.

# Comentários ruins

- A maioria dos comentários cai nesta categoria. Geralmente eles são suportes ou desculpas para um código de baixa qualidade ou justificativas para a falta de decisões, amontoados como se o programador estivesse falando com si mesmo.

# Dicas

1. Evite o comentário se é possível usar uma função ou uma variável.

2. Poucas práticas são tão condenáveis quanto colocar o código como comentário. Não faça isso!

3. Houve uma época, na década de 1960, em que explicar o código em comentários poderia ser prático. Mas já faz um tempo que temos os sistemas de controle de código fonte, que lembrarão o código para nós. Não precisamos explicá-los em comentários. Simplesmente exclua o código, Prometo que não o perderá.

4. Não adicione discussões históricas interessantes ou descrições irrelevante sde detalhes em seus comentários;

5. A conexão entre um comentário e o código que ele descreve deve ser óbvia.

6. Funções curtas não requerem muita explicação. Um nome bem selecionado para uma função pequena que faça apenas uma coisa costuma ser melhor do que um comentário no cabeçalho.