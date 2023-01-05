# Ah, e os nossos nomes das classes???

Digamos que você esteja construindo uma **ABSTRACT FACTORY** para criar formas. Essa factory será uma interface, e implementada por uma classe concreta. 

Como devemos nomeá-la? **"IShapeFactory e ShapeFactory"?** 

***Prefiro não enfeitar as interfaces.***

O "I" no início, tão comum no home em dia, é na melhor das hipóteses uma distração, e na pior são informações excessivas. Não quero que meus usuários saibam que estou lhes dando uma interface, e, sim, apenas uma ShapeFactory. 

Portanto, eu devo codificar seja a interface ou a implementação, escolho esta. Para codificar a interface, é preferível chamá-la de **ShapeFactoryImp**, ou mesmo **CShapeFactory**

> Adendo meu:

- ShapeFactoryImp onde "Imp" vem de "Implementation";
- CShapeFactory onde "C" vem de "Concrete";


***Tio Bob em Código Limpo, 2011, pág.24***