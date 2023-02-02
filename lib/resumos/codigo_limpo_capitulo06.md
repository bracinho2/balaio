# Resumo "Código Limpo"

## Capítulo 06 - Objetos e Estruturas de Dados

***Há motivos para declararmos nossas variáveis como privadas. Não queremos que ninguém dependa delas.***

## Abstração de dados
- Ocultar a implementação não é só uma questão de colocar uma camada de funções entre as variáveis. É uma questão de abstração. Uma classe não passa suas variáveis simplesmente por meio de métodos de escrita e leitura. Em vez disso, ela expõe interfaces abstratas que permitem aos usuários manipular a ***essência*** dos dados, sem precisar conhecer a implementação.

## Antissimetria data/objeto
- Os objetos usam abstrações para esconder seus dados, e expõem suas funções que operam tais dados. As estruturas de dados expõem seus dados e não possuem funções significativas.

> O código procedural (usado em estruturas de dados) facilita a adição de novas funções sem precisar alterar as 
> estruturas de dados existentes. O código orientado a objeto (OO), por outro lado, facilita a adição de novas 
> classes sem precisar alterar as funções existentes.

**Programadores experientes sabem que a ideia de que tudo é um objeto é ***um mito***. Às vezes, você realmente ***deseja*** estruturas de dados simples com procedimentos operando nelas.

## A Lei de Demeter

**O método não deve chamar os métodos em objetos retornados por qualquer outra das funções permitidas. Em outras palavras, fale apenas com conhecidos, não com estranhos**.

## Objetos de transferência de dados
- A forma perfeita de uma estrutura de dados é uma classe com variáveis públicas e nenhuma função. Às vezes, chama-se isso de objeto de transferência de dados, ou DTO(Sigla em inglês). Os DTOs são estruturas muito úteis, especialmente para se comunicar com banco de dados ou analisar sintaticamente de mensagens provenientes de sockets e assim por diante. Eles costumam se tornar os primeiros numa série de estágios de tradução que convertem dados brutos num banco de dados em objetos no código do aplicativo.

## Conclusão
- Os objetos expõem as ações e ocultam os dados. Isso facilita a adição de novos tipos de objetos sem precisar modificar as ações existentes e dificulta a inclusão de novas atividades em objetos existentes. As estruturas de dados expõem os dados e não possuem ações significativas. Isso facilita a adição de novas ações às estruturas de dados existentes e dificulta a inclusão de novas estruturas de dados em funções existentes. (...) 

**Bons desenvolvedores de software entendem essas questões sem preconceitso e selecionam a abordagem que melhor se aplica no momento.**