# Resumo "Código Limpo"

## Capítulo 08 - Limites

**De algum modo, devemos integrar, de forma limpa, esse código externo ao nosso. Neste capítulo veremos as práticas e técnicas para manter limpos os limites de nosso software.**

## O uso de código de terceiros
- Há uma tensão natural entre o fornecedor de uma interface e seu usuário. Os fornecedores de pacotes e frameworks de outros fabricantes visam a uma maior aplicabilidade de modo que possam trabalhar com diversos ambientes e atender a um público maior. Já os usuários desejam uma terface voltada para sua próprias necessidades. Essa tensão pode causar problemas nos limites de nossos sistemas.

- Passar adiante pelo sistema uma instância de Map<Sensor> significa ue haverá lugares para mexer se a interface para o Map mudar.

## Explorando e aprendendo sobre limites
- Entender códigos de terceiros é difícil. Integrá-lo ao seu também é. Fazer ambos ao mesmo tempo dobra a dificuldade. E se adotássemos uma outra abordagem? Em vez de experimentar e tentar o novo código, poderiamos criar testes para explorar nosso conhecimento sobre ele. Jim newkirk chama isso de ***testes de aprendizagem***.

## Os testes de aprendizagem são melhores que de graça
- Os testes de aprendizagem são experimentos precisos que ajudam a aumentar nosso entendimento.

- Esses testes não saem de graça como geram um retorno positivo de nosso investimento quando hoouver nossas distribuições daquele pacote externo, podemos executar os testes para ver se há diferenças nas atividades.

- Se o pacote for alterado de uma forma que fique incompatível com nossos testes, descobriremos de imediato;

## Limites Limpos
- Coisas interessantes ocorrem nos limites. A alteração é uma delas. Bons projetos de software acomodam modificações sem muito investimento ou trabalho.

- Devemos evitar que grande parte de nosso código enxergue as particularidades de terceiros. É melhor depender de algo que ***você*** controle do que pegar algo que acabe controlando você.