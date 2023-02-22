# Resumo "Código Limpo"

## Capítulo 10 - Classes

**Ainda não teremos um código limpo até discutirmos sobre os níveis mais altos da organização do código. Vamos falar agora sobre ***classes limpas*****

## Organização das classes (Convenção Java)
- Deve começar com uma lista de variáveis;
- Variáveis Públicas, estáticas e constantes primeiro;
- Estáticas privadas e instâncias privadas depois;

**Regra de Ouro: Regra de cima para baixo. O programa deve ser lido como um artigo de jornal**

## Encapsulamento
- Perder o encapsulamento é sempre o último recurso.

## As classes devem ser pequenas
1. Classes devem ser pequenas;
2. Classes devem ser menores ainda;

- Medimos nossas classes por **responsabilidades**. Evitem as famosas **God Classes**.

- O nome da classe deve descrever quais as responsabilidades que ela faz. 

## O Princípio do SRP
- Uma classe deve ter apenas uma responsabilidade e um motivo para mudar.

- Por quê encontramos facilmente classes que fazem muitas coisas? A razão deste fato é que: Fazer software funcionar e torna-lo limpo são duas coisas bem diferentes.

- Não devemos pensar que terminamos o programa quando ele funciona. Devemos voltar e dividir as classes muito cheias em outras com responsabilidades únicas;

## Coesão
- Classes devem ter um número pequeno de variáveis de instâncias.

- Uma classe na qual cada variável é utilizada por um método é totalmente coesa.

## Manutenção de resultados coesos em múitas classes pequenas
- Separar uma função grande em muitas pequenas geralmente nos permite dividir várias classes também. Isso dá ao nosso programa uma melhor organização e uma estrutura mais transparente.

## Como organizar para alterar
- Para a maioria dos sistemas, a mudança é constante. A cada uma, corremos o risco de o sistema não funcionar mais como o esperado. Em um sistema limpo, organizamos nossas classes de modo a reduzir os riscos nas alterações;

- Desejamos estruturar nossos sistemas de modo que baguncemos o mínimo possível quando os atualizamos. Num sistema ideal, incorporaríamos novos recursos através da expansão do sistema, e não alterando o código existente.

## Como isolar das alterações
- As necessidades mudarão, portanto o código também. Aprendemos na introdução à OO que há classes concretas, que contêm detalhes de implementação (código), e classes abstratas, que representam apenas conceitos. 

- Uma classe do cliente depende de detalhes concretos corre perigo quando tais detalhes são modificados.