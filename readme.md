# **Funções de Alta Ordem em Elm**

![Logo Elm](https://imgur.com/6dDGLdC.png)
[Link do repositório hospedado no Repl.it](https://replit.com/@GabrielSVS/2022b-perso2-Elm)

### Introdução
Uma das características que define a programação funcional é a sua maneira de lidar com funções, implicando que toda função utilizada sempre retorna algum valor em específico. Porém, funções também podem ser passadas como argumento e/ou retornar uma função como saída, aplicando, assim, o conceito de funções de alta ordem.
```
-- Ex.: Função que será usada como argumento
isTemp : Float -> Bool
isTemp t = t >= 37.8

hasFever : List Float -> List Float
hasFever = List.filter isTemp
```
### Vantagens
É uma maneira muito poderosa de resolver problemas, principalmente matemáticos, definindo o que as coisas são diretamente, em vez de utilizar loops e condicionais, por exemplo. Por consequência, as ações ficam melhor separadas, facilitando o entendimento do código, e também seu refatoramento e manutenção.

### Exemplos (*em progresso...*)
...
```
-- List.filterMap : (a -> Maybe b) -> List a -> List b
numbers : List String -> List Int
numbers list = List.filterMap String.toInt list
```
...
```
-- List.indexedMap : (Int -> a -> b) -> List a -> List b
addIndex : List String -> List (Int,String)
addIndex list = List.indexedMap Tuple.pair list
```
...
### Curiosidades
* [Retornos de erro]() são bastante "amigáveis" com o usuário, o que tem seus prós e contras;
* Acesso de registros em variáveis do tipo `Record` podem ser feitos em uma ordem contrária, de modo que a propriedade seja digitada primeiro (função equivalente a `(\r -> r.name)`);
![Exemplo no VSCode](https://imgur.com/LbHX4QR.png)

### Links:
* [Documentação Elm](https://package.elm-lang.org)

* [Guia introdutório ao Elm](https://guide.elm-lang.org)

* [LearnYouAElm (Adaptação do Haskell)](https://learnyouanelm.github.io/pages/06-higher-order-functions.html)

* [Playlist no YouTube - Sellooh](https://www.youtube.com/playlist?list=PLfvCHAw-EHeL718ZXA0HSUMUJZrmS-875)