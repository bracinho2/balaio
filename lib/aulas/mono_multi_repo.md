# Monorepo & Multirepo

> Definição: Repositório de Armazenamento de Código;

## Observações
- Monolítico: tudo em poucas pastas;
- Features: várias pastas e arquivos para diferentes funcionalidades;

## Monorepo
Um repositório para todo o código;

1. Gestão centralizada de código;
2. Facilita a Refatoração com as dependências;
3. Todas as informações são compartilhadas: metodologias, decisões, etc.;

### Desvantagens do Mono
1. Ciclos de desenvolvimento mais lentos;
2. Requer o download de todo o código;

## Multirepo
Vários repositórios para um mesmo código;

1. Possibilidade de trabalhar com várias bibiotecas e suas versões independentemente;
2. Lançamento de Serviços Independentes;
3. Permite Restrições de acesso;
4. Trabalho com Equipes Autônomas diferentes;

### Desvantagens do Multirepo
1. Manutenção das bibliotecas;
2. Fragmenta as equipes;


### Exemplos:
Google, Facebook, Twitter e Uber têm utilizam Monorepo. A Microsoft executa o maior monorepo Git do planeta para hospedar o código fonte do sistema operacional Windows.
No lado oposto, Netflix e Amazon são empresas famosas que utilizam a abordagem multi-repo.


## Como começar?
Theme (Design System em Monorepo);

Dica para criar o package:

```flutter create --template=package nomeDoPackage```

No arquivo principal você deve exportar os arquivos; Do contrário eles não ficarão visíveis para o outro projeto;

```export 'themes/themes.dart'```

Há a necessidade de relatar no pubspec.yaml o caminho para o novo package:
> O caminho poderá ter um ../ indicando a navegação entre pastas;

```cambona:
    path: cambona```


## Melos
Quando trabalhamos em um projeto com vários pacotes necessitamos de uma ferramenta que possa nos facilitar a atualização de tudo que está envolvido com alguns cliques. 
A ferramenta Melos resolve este problema facilmente e com o mínimo de esforço possível. Basicamente para utilizar o Melos basicamente precisamos de duas coisas: 
- Precisamos criar o arquivo yaml; 
- Precisamos ativar o melos para utilizar;

### Criar o arquivo
Deve se criar o arquivo melos.yaml com o seguinte conteúdo:

```
name: seu_pacote

packages:
  - cambona/**
  - peabiru/**
  - '*'

scripts:
  hello: echo 'Hello World Melos =)'

```

### Ativação do Melos
```dart pub global activate melos```