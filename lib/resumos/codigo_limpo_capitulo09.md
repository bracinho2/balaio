# Resumo "Código Limpo"

## Capítulo 09 - Testes de Unidade

**Nossa profissão evoluiu. Atualmente eu criaria um teste que garantisse que cada canto do código funcionasse como eu esperava.**

## As três leis do TDD

1. Não se deve escrever o código de produção até criar um teste de unidade de falhas;
2. Não se deve escrever mais de um teste de unidade do que necessário para falhar, e não compilar é falhar;
3. Não se deve escrever mais códigos de produção do que o necessário para aplicar o teste de falha atual;


- Se trabalharmos dessa forma, criariamos centenas de testes a cada dia, centenas a cada mês e milhares a cada ano; os testes cobririam praticamente todo o nosso código de produção.

## Como manter os testes limpos

- Quanto pior o teste, mais difícil será de mudá-lo. Quanto mais confuso for o código de teste, são maiores as chances de você levar mais tempo espremendo novos testes para dentro da coleção do que na criação do código de produção.
- A moral da história é simples: ***Os códigos de testes são tão importantes quanto o código de produção.*** ele não é componente secundário. Ele requer raciocínio, planejamento e cuidado. É preciso mantê-lo tão limpo quanto o código de produção.

## Os testes habilitam as "-idades"

- São ***os testes de unidade que mantém seus códigos flexíveis, reutilizáveis e passíveis de manutenção***. A razão é simples. Se você tiver testes, não terá medo de alterar o código! Sem os testes, cada modificação pode gerar um bug. Não importa o grau de flexibilidade de sua arquitetura ou de divisão de seu modelo, pois, sem os testes você ficará relutante em fazer mudanças por temer gerar bugs não detectados.
- Portanto, ter uma coleção de testes de unidade automatizados que cubram o código de produção é o segredo para manter seu projeto e arquitetura os mais limpos possíveis.

## Testes limpos

- O que torna um teste limpo? Três coisas: legibilidade, legibilidade, legibilidade. Talvez isso seja até mais importante nos testes de unidade do que no código de produção. O que torna os testes legíveis? O mesmo que torna todos os códigos legíveis: clareza, simplicidade e consistência de expressão.
- A estrutura desses testes tornou óbvio o padrão **CONSTRUIR-OPERAR-VERIFICAR**. Cada um dos testes está claramente dividido em três partes. A primeira produz os dados do teste, a segunda opera neles e a terceira verifica se a operação gerou os resultados esperados.

## Um único conceito por teste

- Talvez a melhor regra seja que desejamos um único conceito em cada função de teste. Não queremos funções longas que saiam testando várias coisas uma após a outra.

## F.I.R.S.T.

- Fast (Rapidez): os testes devem ser rápidos;
- Independent (Independência): os testes não devem depender uns dos outros;
- Repeatable (Repetitividade): deve-se poder repetir os testes em qualquer ambiente;
- Self-Validation (Autovalidação): os testes devem ter uma saída booleana;
- Timely (Pontualidade): os testes precisam ser escritos em tempo hábil;

## Conclusão

- Os testes são tão importantes para a saúde de um projeto quanto o código de produção.

