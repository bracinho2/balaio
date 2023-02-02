# DDD do Jeito Certo
## Elemar Junior

1. Complexidade

O objetivo primário do DDD é atacar a complexidade do Dominio e não atacar a complexidade técnica do software.
Queremos entender e atacar o domínio do negócio e suas problemáticas.

2. Linguagem Onipresente

PS: obseção por tipos primitivos; (ver)

Pensar pelo banco de dados é um problema de solução técnica influenciando (ou não) em pensar no domínio;
Remover os setters e pensar em motivos para mudança;

Pergunta: quais são os motivos para mudar?
Aqui não se deve fazer entidades anêmicas; precisamos identificar os motivos para mudança e também os cenários de teste;

A linguagem omnipresente visa juntar os técnicos com os especialistas para um diálogo preciso sobre o domínio de negócio;

3. Subdomínios e contextos delimitados

Criar espaços diferentes:
- Espaço de problema;
    - Dominio;
    - Subdomínio;

- Espaço da Solução;
    - Modelo de Domínio;
    - Contexto delimitado;


Core Domain + Subdominios de Suporte + Subdomínios Genéricos = DOMINIO;

Core Domain = Espaço do problema; Dominio ou atividade que diferencia uma empresa de outra;
Suporte = Dão suporte ao core;
Genéricos = Dão suporte mas nao tem relação direta com o core domain

4. Context Mapping

É necessário fazer o mapeamento de contextos que estão dentro do domínio;
Em cada contexto temos um time separado;
Mapear os relacionamentos entre os subdomínios;

5. Entidades e Objetos de Valor

O que é uma entidade?
    - É uma representação de alguma coisa que e individual;
    - Pode ser identificada por um ID;
    - ID pode ser utilizada para comparações;
    - Uma entidade é mutável, ou seja, ela pode sofrer mudanças;

O que é um objeto de valor?
    - É dependente de uma entidade;
    - Descrição ou parte de uma entidade;
    - Não existe um id/ se existir não é elemento de comparação;
    - Um objeto de valor é imutável, ou seja, a cada mudança é um novo valor;
    - Pode ser uma estrutura; se for uma classe precisa-se de um método de comparação;

    