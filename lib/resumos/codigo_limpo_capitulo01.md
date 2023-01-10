# Resumo "Código Limpo"

## Capítulo 01 - Código Limpo

***Há duas razões pelas quais você está lendo este livro: você é programador e deseja se tornar um ainda melhor. Ótimo. Precisamos de programadores melhores.***

1. É claro que um código ruim já lhe atrasou. Mas, então, por que que você o escreveu desta forma?

2. É claro que naquela época não conhecíamos a lei de Leblanc: **Mais tarde é igual a nunca.**

3. Com o tempo, a bagunça se torna tã o grande e profunda que não dá para arrumá-la. Não há absolutamente solução alguma.

4. Mas o padrão, querido Dilbert, não está em nossas estrelas, mas sim em nós mesmos. **Somos Profissionais.**

5. A única maneira de isso não acontecer - a única maneira de ir mais rápido - é sempre manter o código limpo.

6. A exortação:
 >"Como escrever um código limpo? (...) A 'sensibilidade ao código' é o segredo. (...) 
 >Ela não só permite perceber se o código é bom ou ruim, como também nos mostra a estratégia
 >e disciplina de como transformar um código ruim em um código limpo. (...) Em suma, um
 >programador que escreve um código limpo é um artista que pode pegar uma tela em branco e
 >submetê-la a uma série de transformações até que se torne um sistema graciosamente
 >programado."

7. Dicas dos Autores:
    
    7.1. Bjarne Stroustrup
    - O código limpo faz bem apenas uma coisa.
    - O código limpo é centralizado. Cada função, cada classe, cada módulo expõe uma única tarefa que nunca sofre interferência de outros detalhes ou fica rodeada por eles.
    
    7.2. Grady Booch
    - Um código limpo é simples e direto. (...) ele está repleto de abstrações e linhas de controle objetivas.
    - Nosso código deve ser decisivo, sem especulações. Ele deve conter apenas o necessário. Nossos leitores devem assumir que fomos decisivos.

    7.3. Dave Thomas
    - Ele (o código limpo...) tem teste unitários e de aceitação, nomes significativos; ele oferece apenas uma maneira, e não várias, de se fazer uma tarefa; possui poucas dependências;
    - Um código sem testes, não está limpo. Não importa o quão elegante, legível ou acessível esteja, se ele não possuir testes, ele não é limpo.

    7.4. Michael Feathers
    - Um código lmpo sempre parece que foi escrito por alguém que se importava.
    - Em duas palavras: se importar.

    7.5. Ron Jeffries
    - Regras de Beck sobre código simples:
        1. Efetue todos os testes;
        2. Sem duplicação de código;
        3. Expressa todas as ideias do projeto que estão no sistema;
        4. Minimiza o número de enteidades, como classes, métodos, funçãoes e outras do tipo;

    - Redução de duplicação de código, alta expressividad e criação no início de abstrações simples. É isso que torna para mim um código limpo;

    7.6. Ward Cunningham
    - Um código belo faz parecer que a linguagem foi feita para o problema! Portanto, é nossa responsabilidade de fazer a linguagem parecer simples. Há brigas por causa das linguagens em todo lugar. Cuidado! Não é a linguagem que faz os programas parecerem simples, é o programador.

    7.7. Uncle Bob
    - Diremo-lhe o que consideramos como nomes limpos de váriáveis, funções limpas, classes limpas, etc.
    - Na próxima vez em que você escrever uma linha de código, lembre-se de que você é um autor, escrevendo para leitores que julgarão  seus esforços.
    - "Deixe a área do acampamento mais limpa do que como você a encontrou. (...) A limpesa (do código) não precisa ser grande. Troque o nome de uma variável por um melhor,  divida uma função que esteja um pouco grande demais, elimine um pouco de repetição de código, reduza uma instrução if aninhada.

## CONCLUSÃO

>Portanto, este livro não pode prometer lhes tornar um bom programador. Ou lhe dar 
>"sensibilidade ao código". Tudo o que pode fazer é lhe mostrar a linha de pensamento de 
>bons programadores e truques, técnicas e ferramentas que eles usam.