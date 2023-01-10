# Resumo "Código Limpo"

## Capítulo 02 - Nomes Significativos

***Todos que lerem seu código (incluindo você mesmo) ficarão agradecidos***

1. Escolher nomes que revelem seu propósito pode facilitar bastante o entendimento e a alteração do código;
    - Mesmo se estiver programando uma hipoteunosa e **hp** parecer uma boa abreviação, **o nome pode ser mal interpretado**;

2. Usar números sequenciais em nomes (a1, a2, ...aN) é o oposto da seleção de nomes expressivos. Eles não geram confusão, simplesmente não oferecem informação alguma ou dica sobre a intenção de seu criador;

3. Faça uma distinção dos nomes de uma forma que o leitor compreenda as diferenças;

4. O ser humano é bom com palavras (...). Crie nomes pronunciáveis;

5. Use nomes passíveis de busca;
    - Nomes longos se sobressaem aos curtos e qualquer nome passível de busca se sobressai a uma constante no código;

6. IMPORTANTE:
    >Já temos que lidar com bastante codificação e não precisamos acrescentar mais.
    >Codificar informações do escopo ou tipos em nomes simplesmente adiciona uma tarefa exta 
    >de decodificação. Dificilmente parece lógico contratar um novo funcionário para 
    >aprender outra "linguagem" codificadora além da atual usada no código no qual se está 
    >trabalhando. é uma sobrecarga mental desnecessária ao tentar resolver um problema. 
    >Nomes codificados raramente são pronunciáveis, além de ser fácil escrevê-los 
    >incorretamente.

7. Interfaces e Implementações

    Digamos que você esteja construindo uma **ABSTRACT FACTORY** para criar formas. Essa factory será uma interface, e implementada por uma classe concreta. 

    Como devemos nomeá-la? **"IShapeFactory e ShapeFactory"?** 

    ***Prefiro não enfeitar as interfaces.***

    O "I" no início, tão comum no home em dia, é na melhor das hipóteses uma distração, e na pior são informações excessivas. Não quero que meus usuários saibam que estou lhes dando uma interface, e, sim, apenas uma ShapeFactory. 

    Portanto, eu devo codificar seja a interface ou a implementação, escolho esta. Para codificar a interface, é preferível chamá-la de **ShapeFactoryImp**, ou mesmo **CShapeFactory**

    > Adendo meu:

    - ShapeFactoryImp onde "Imp" vem de "Implementation";
    - CShapeFactory onde "C" vem de "Concrete";

8. IMPORTANTE:
    >Os programadores são pessoas muito espertas. E esse tipo de pessoas de se exibir 
    >mostrando suas habilidades mentais. Apesar de tudo, se você puder confiantemente se 
    >lembrar de que o "r" minúsculo é uma versão da URL sem o HOST e contexto, então 
    >você é muito esperto. 

        ***Uma diferença entre um programador esperto e um programador profissional é que este entende que **clareza é fundamental**. Os profissionais usam seus poders para o bem, e escrevem códigos que outros podem entender***

9. CONSELHOS:
    - Selecione uma palavra por conceito;
    - Não faça trocadilhos;
    - Use nomes a partir do dominio da solução;
    - Adicione um contexto significativo;

## CONCLUSÃO

 >O mais difícil sobre escolher bons nomes é a necessidade de possuir boas habilidades de 
 >descrição e um histórico cultural compartilhado. Essa é uma questão de aprender, e não 
 >técnica, gerencial ou empresarial. Como consequência, muitas pessoas nessa área não 
 >aprendem essa tarefa muito bem. (...) Use ferramentas de refatoração para ajudar a 
 >resolver estas questões. Em pouco tempo valerá a pena, e continuará a valer em longo prazo.