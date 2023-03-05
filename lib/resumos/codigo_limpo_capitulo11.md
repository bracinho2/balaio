# Resumo "Código Limpo"

## Capítulo 11 - Sistemas

***Complexidade mata. Ela suga a vida dos desenvolvedores, dificulta o planejamento, a construção e o teste dos problemas (Ray Ozzie)***

 - Consideremos como manter um código limpo nos níveis de abstração mais altos, o nível do sistema.

# Separe a construção e o uso de um sistema
- Os sistemas de software devem separar o processo de inicialização - a criação dos objetos do aplicativo e a "conexão" entre as dependências - da lógica em tempo de execução que vem após a inicialização.

# Separação do Main
- Uma maneira de separar a construção do uso é simplesmente colocar todos os aspectos dela no ***main*** ou em módulos chamados por ele, e modelar o resto do sistema assumindo que todo os objetos foram construídos e atribuidos adequadamente.

- A função main constrói os objetos necessários para o sistema e, então, os  passa ao aplicativo, que simplesmente os usa.

# Factories
- De vez em quanto precisamos passar o controle para o alicativo quando um objeto for criado;

# Injeção de dependência
- Um mecanismo poderoso para separar a construção do uso é a ***Injeção de dependências***, a aplicação da ***Inversão de Controle*** ao gerenciamento de dependência.

- A injeção de dependência verdadeira vai mais além. A classe não determina diretamente suas dependências; ela fica completamente passiva e oferece métodos de escrita (setters) ou parâmetros de construção ou ambos que serão usados para injetar as dependências.

- Quais objetos dependentes são usados realmente são especificados por um arquivo de configuração ou diretamente programando-se no módulo de construção de tarefa específica.

# Desenvolvimento Gradual
- É um mito dizer que podemos conseguir um sistema "correto de primeira". Em vez isso, devemos implementar apenas os fatos de hoje e, refatorar e expandir o sistema, implementando novos fatos amanhã.  Essa é a essência das agilidades iterativa e incremental. O desenvolvimento dirigido a testes, a refatoração e o código limpo que produzem fazer com que isso tudo funcione em nível de código.

- Se comparados aos sistemas físicos, os de software são únicos, e suas arquiteturas podem crescer gradualmente se mantivermos uma separação devida de preocupações.

- DTO: são basicamente "structs" sem comportamento nenhum;

# Testes na arquitetura do sistema
- Isso significa que podemos iniciar um projeto de Software com uma arquitetura simples, porém bem desacoplada, fornecendo reaapidamente user stories que funcionem e, então, adicionando mais infra-estrautura conforme desenvolvemos.

- É claro que isso não quer dier que iniciamos um projeto sem algum planejamento. Temos certas expectativas a respeito do escopo, objetivos e programação gerais para o projeto, assim como para a estrutura geral do sistema final. Todavia, devemos manter a capacidade de alterações durante o desenvolvimento no caso de aperfeiçoamento.

- Uma boa API deve ficar oculta na maioria das vezes, portanto a equipe expande a maioria de seus espforços criativos centralizados nas users stories sendo implementadas.

# Otimize a tomada de decisões
- Modularidade e separação de preocupações descentralizam o gerenciamento e possibilitam a tomada de decisões. Em um sistema consideravelmente grande, seja uma cidade ou um projeto de software, ninguem pode tomar todas as decisões.

# Use padrões sabiamente quando eles adicionarem um valor demonstrativo
- Os padrões facilitam a reutilização de idéias e componentes, recrutam pessoas com experiência considerável, encapsulam boas ideias e conectam os componentes. Entretanto, o processo de criação de padrões pode, às vezes, ser muito longo para que o mercado fique à espera deles, e alguns padrões acabam se desviando das necessidade sreais das pessoas a quem eles pretendem servir.

# Conclusão
- Os sistemas também devem ser limpos. Uma arquitetura invasiva afeta a agilidade e sobrepõe a lógica do dominio que, quando ofuscada, perde-se qualidade porque os bugs se escondem mais facilmente e dificulta a implementação.

- Esteja você desenvolvendo sistemas ou módulos individuais, jamais se esqueça de usar a coisa mais simples que funcione.