# Resumo "Código Limpo"

## Capítulo 05 - Formatação

***Quando as pessoas olham o código, desejamos que fiquem impressionadas com a polidez, a consistência e a atenção aos detalhes presentes. Queremos que reparem na organização. Desejamos que suas sobrancelhas se levantem ao percorrer os módulosç que percebam que foram profissionais que estiveram ali.***

# Objetivo da Formatação

- A formatação do código é importante. Importante demais para se ignorar e importante demais para ser tratada religiosamente. ela serve como uma comunicação, e essa é a primeira regra nos negócios de um desenvolvedor profissional.

# Formatação Vertical

- Parece que é possível construir sistemas significativos a partir de códigos simples de 200 linhas, com um limite máximo de 500. Embora essa não deva ser uma regra fixa, deve-se considerá-la bastante, pois arquivos pequenos costumam ser mais fáceis de se entender do que os grandes.

# Metáfora do Jornal

- O nome deve ser simples mas descritivo. O nome em si deve ser o suficiente para nos dizer se estamos no módulo certo ou não. As partes mais superiores do código-fonte devem ofereer os conceitos e algoritmos de alto nível. Os detalhes devem ir surgindo conforme se move para baixo, até encontrarmos os detalhes e as funções de baixo nível no código-fonte.

# Espaçamento vertical entre conceitos

- Quase todo código é lido da esquerda para a direita e de cima para baixo. Cada linha representa uma expressão ou uma estrutura, e cada grupo de linhas representa um pensamento completo. Esses pensamentos devem ficar separados por linhas em branco.

# Distância Vertical

- Os conceitos intimamente relacionados devem ficar juntos verticalmente. Obviamente essa regra não funciona para arquvos separados. Mas, então, não se deve separar em arquivos distintos conceitos intimamente relacionados, a menos que tenha uma razão muito boa. Na verdade, esse é um dos motivos por que se devem evitar variáveis protegidas.

## Declaração de variáveis

- Deve-se declarar as variáveis o mais próximo possível de onde serão usadas. como nossas funções são muito pequenas, as variáveis locais devem ficar no topo de cada função.

## Variáveis de instância

- Devem-se declarar as variáveis de instância no início da classe. Isso não deve aumentar a distância vertical entre tais variáveis, poi, numa classe bem projetada, elas são usadas por muitos, senão todos, os métodos da classe.

## Funções dependentes

- Se uma função chama a outra, elas devem ficar verticalmente próximas e a que chamar deve ficar acima da que for chamada, se possível. Isso dá um fluxo natural ao programa.

## Ordenação vertical

- De modo geral, desejamos que as chamadas das dependências da função apontem para baixo. Isto é, a funçao chamada deve ficar embaixo da que a chama. Isso cria um fluxo natural para baixo no módulo do código-fonte, de um nível maior para um menor.

## Formatação horizontal

- Devemos nos esforçar para manter nossas linhas curtas. O antigo limite de 80 de Hollerith é um pouco arbitrário, e não sou contra linhas com 100 ou mesmo 120 caracteres. Mas ultrapassar isso provavelmente é apenas falta de cuidado.

## Indentação

Um arquivo-fonte é mais como uma hierarquia do que algo esquematizado. (...) A fim de tornar visível a hierarquia desses escopos, indentamos as linhas do código-fonte de acordo com sua posição na hierarquia. Instruções no nível do arquivo, como a maioria das declarações de classes, não são indentadas. Métodos dentro de uma classe são indetados um nível à direita dela. Implementações do método são implementadas um nível à direita da declaração do método. Implementações de blocos são implementadas um nível à direita do bloco que as contém, e assim por diante.

## Regra de equipes

- Uma equipe de desenvolvedores deve escolher um único estilo de formatação, e, então, todos os membros devem usá-lo. 

- Lembre-se: um bom sistema de software é composto por uma série de documentos de fácil leitura. Eles precisam ter um estilo consistente e sutil. O leitor precisa poder confiar que as formatações que ele vir em um arquivo-fonte terão o meso significado nos outros. A última coisa que queremos é adicionar mais complexidade ao código fonte programando-o com um monte de estilos diferentes.