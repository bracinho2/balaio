# Resumo "Código Limpo"

## Capítulo 07 - Tratamento de Erros

**A entrada pode estar errada e os dispositivos podem falhar. Em suma, as coisas podem dar errado, e quando isso ocorre, nós, como programadores, somos responsáveis por certificar que nosso código faça o que seja preciso fazer.**

***Esse recurso é importante, mas se obscurecer a lógica, está errada.***

## Use exceções em vez de retornar códigos
- É melhor lançar uma exceção quando um erro for encontrado. O código de chamada fica mais limpo e sua lógica não fica ofuscada pelo tratamento de erros.

## Crie primeiro sua estrutura try-catch-finally
- Ao executar o código na parte try da estrutura try-catch-finally, você declara que aquela execução pode ser cancelada a qualquer momento e, então, continuar no catch.

- Uma boa prática é começcar com uma estutura try-catch-finally quando foir escrever um código que talvez lance excessões;

## Use excessões não verificadas
- Considere a hierarquia de chamadas de um sistema grande. As funções no topo chamam as abaixo delas, que chama outras abaixo delas e ***ad infinitum***. Agora digamos que uma das funções dos níveis mais baixos seja modificada de uma forma que ela deva lançar uma exceção. (...) O resultado aninhado é uma cascata de alterações que vão desde os níveis mais baixo do software até o mais alto! (...) as excessões verificadas podem às vezes ser úteis se você estiver criando uma biblioteca críticaÇ é preciso capturá-las. Mas no desenvolvimento geral de aplicativo, os custos da dependência superam as vantagens.

## Forneça excessões com contexto
- Você pode capturar uma ***stack trace*** de qualquer excessão; entretanto, ele não consegue lhe dizer o objetivo da operação que falhou.

- Crie mensagens de erro informativas e as passe juntamente com as exceções. Mencione a operação que falhou e o tipo da falha.

## Defina as classes de exceções segundo as necessidades do chamador
- Quando definimos as classes de exceção num aplicativo, nossa maior preocupação deveria ***como elas são capturadas***.

## Não retorne null
Se você trabalha num código fonte como esse, ele pode não parecer tão ruim assim para você, mas ele é! quando retornamos ***null***, basicamente estamos criando mais trabalho para nós mesmos e jogando problemas em cima de nossos chamadores. Só basta esquecer uma verificação ***null*** para que o aplicativo fique fora de controle.

## Não passe null
- Retornar ***null*** dos métodos é ruim, mas passar ***null*** para eles é pior. A menos que esteja trabalhando com uma API que espere receber null, você deve evitar passá-lo em seu código sempre que possível.

## Conclusão
- Um código limpo é legível, mas também precisa ser robusto. Esses objetivos não são conflitantes. Podemos criar programas limpos e robustos se enxergamos o tratamento de erro como uma preocupação à parte, algo que seja visível independentemente de nossa lógica principal. Na medida em que somos capazes de fazer isso, podemos pensar nisso de forma independente e dar um grande passo na capacidade de manutenção de nosso código.