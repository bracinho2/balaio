# Resumo "Código Limpo"

## Capítulo 03 - Funções

***As funções são a primeira linha de organinzação em qualquer programa.***

**As funções devem fazer uma coisa. Devem fazê-la bem. Devem fazer apenas ela!**

# Regras de Ouro:

- A primeira regra para funções é que elas devem ser pequenas;
- a segunda é que preciam ser mais espertas do que isso;

 > Na década de 1980, constumáva-mos dizer que ua função não deveria ser maior
 > do que a tela. (...)  Hoje em dia, com fontes reduzidas e um belo e grande
 > monitor, você consegue colocar 150 caracteres em uma linha - não se deve 
 > ultrapassar esse limite - e umas 100 linhas ou mais por tela - as funções
 > não devem chegar a isso tudo, **elas devem ter no máximo 20 linhas**.

# Identação:
- Blocos dentro de instruções if, else, while e outros devem ter apenas uma linha;
- Funções não devem ser grandes e ter estruturas aninhadas. Portanto, o nível de identação de uma função deve ser de, no máximo, um ou dois.

# Faça apenas uma coisa:

- Uma outra forma de saber se uma função faz mais de "uma coisa" é você poder extrair outra função dela a partir de seu nome que não seja apenas uma reformulação de sua implementação.

# Regra Descendente(Ler o código de cima para baixo):

> Queremos que o código seja lido de cima para baixo, como uma narrativa.
> Mas aprender este truque é também muito importante, pois ele é o segredo
> para manter as funções curtas e garantir que façam apenas "uma coisa".

# Switch:

- Minha regra geral para estruturas switch é que são aceitáveis se aparecerem apenas uma vez, como para a criação  de objetos polimórficos, e estiverem escondidas atrás de uma relação de herança de modo que o resto do sistema não possa enxergá-la.

# Nomes descritivos:

- Lembre-se do princípio de Ward: ***Você sabe que está criando um código limpo quando cada rotina que você lê é como você esperava***.
- Não tenha medo de criar nomes extensos, pois eles são melhores do que um pequeno e enigmático. Um nome longo e descritivo é melhor do que um comentário extenso e descritivo.

# Parâmetros de funções:

- A quantidade ideal de parâmetros para uma função é zero (nulo). Depois vem um (mônade), seguido de dois (díade). Sempre que possível devem-se evitar três(tríade).
- Os parâmetros são mais difíceis ainda a partir de um ponto de vista de testes. Imagine a dificuldade de escrever todos os casos de teste para se certificar de que todas as várias combinações de parâmetros funcionem adequadamente. Se não houver parâmetros, essa tarefa é simples. Se houver um, não é tão difícil assim. Com dois, a situação fica um pouco mais desafiadora. Com mais de dois, pode ser desencorajador testar cada combinação de valores apropriados.

# Formas mônades comuns:
- Uma forma menos comum mais ainda bastante útil de um parâmetro para uma função é um evento. Nesta forma, há um parâmetro de entrada, mas nenhum de saída. O programado em si serve para interpretar a chamada da função como um evento, e usar o parâmetro para alterar o estado do sistema, por um exemplo, void passwordAttemptFailedNtimes(int attempts).

# Parâmetros Lógicos:
Esses parâmetros são feios. Passar um booleano para uma função certamente é uma prática horrível, pois ele complica imediatamente a assinatura do método, mostrando explicitamente que a formação faz mais de uma coisa. Ela faz uma coisa se o valor for verdadeiro, e outra se for falso!

# Funções díades:

- Uma função com dois parâmetros é mais difícil de entender do que um (mônade);
- Há casos, é claro, em que dois parâmetros são necessários como, por exemplo, em Point = new (0,0). os pontos de eixos cartesianos naturalmente recebem dois parâmetros;
- Díades não são ruins, e você certamente terá de usá-las. Entretanto, deve-se estar ciente de que haverá um preço a pagar e, portanto, deve-se pensar em tirar proveito dos mecanismos disponíveis a você para convertê-las em mônades;

# Funções tríades:

- Sugiro que você pense bastante antes de criar uma tríade;

# Objetos como Parâmetros:

- Quando uma função parece precisar de mais de dois ou três parâmetros, é provável que alguns deles podem ser colocados em uma classe própria. Considere, por exemplo, a diferença entre as duas declarações seguintes:

    - Circle makeCircle(double x, double y, double radius);
    - Circle makeCircle(Point center, double radius);

- Reduzir o número de parâmetros através da criação de objetos a partir deles pode parecer uma trapaça, mas não é. Quando grupos de variáveis são passados juntos, como x e y no exemplo acima, é mais provável que sejam parte de um conceito que mereça um nome só para ele.

# Verbos e Palavras-chave:

- Escolher bons nomes para funções pode ir desde explicar o propósito da função à ordem e a finalidade dos parâmetros. no caso de uma mônade, a função e o parâmetro devem formar um belo par verbo/substantivo. Por exemplo, write(name), é bastante claro. (...) Um nome ainda melhor seria writeField(name).

# Parâmetros de Saída:

> Antes do surgimento da programação orientada a objeto, às vezes era preciso ter parâmetro de saída. Entretanto, grande parte dessa 
> necessidade sumiu nas linguagens OO, pois o propósito de this é servir como parâmetro de saída. Em outras palavras, seria melhor invocar: 
> report.appendFooter();

- De modo geral, devem-se evitar parâmetros de saída. Caso sua função precise alterar o estado de algo, faça-a mudar o estado do objeto que a pertence;

# Tratamento de erro é uma coisa só:

- As funções devem fazer uma coisa só. Tratamento de erro é uma coisa só. Portanto, uma função que trata de erros não  deve fazer nada mais. Isso implica que a palavra try está dentro de uma função e deve ser a primeira instrução e nada mais deve vir a pós os blocos catch/finally;

# Evite repetição:

- A duplicação pode ser a raiz de todo o mal no software. Muitos princípios e práticas têm sido criados com a finalidade de controlá-la ou eliminá-la;
- Parece que desde a invenção da sub-rotina, inovação no desenvolvimento de software têm sido uma tentativa contínua para eliminar a duplicação do nosso código fonte;

# Como escrever funções?

- Criar software é como qualquer outro tipo de escrita. Ao escrever um artigo, você primeiro coloca seus pensamentos no papel e depois os rganiza de modo que fiquem fáceis de ler. O primeiro rascunho pode ficar desastroso e desorganizado, então você, reestrutura e refina até que ele fique como você deseja;
- Quando escrevo funções, elas começam longas e complexas; há muita endentações e loops aninhados; possuem longas listas de parâmetros; os nomes são arbitrários; e há duplicações código; mas eu também tenho uma coleção de testes de unidade que analizam cada uma dessas linhas desorganizadas do código;
- Sendo assim, eu organizo e refino o código, divido funções, troco os nomes, elimino a duplicação reduzo os métodos e os reorganizo. Às vezes, desmonto classes inteiras, tudo com os testes em execução;

# Conclusão:

- A arte de programar é, e sempre foi, a arte do projeto de linguagem.
 - Programadores experientes veem os sistemas como histórias a serem contadas em vez de programas a serem escritos;
 - Em um ato engenhoso, escrevem-se estas funções para usar a mesma linguagem específica a um domínio que eles criaram para contar sua própria parte da história;
 - Mas jamaisse esqueça de que seu objetivo verdadeiro é contar a história do sistema, e que as funções que você escrever precisam estar em perfeita sincronia e formar uma linguagem clara e precisa para lhe ajudar na narração;