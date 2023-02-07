# **Funções de Alta Ordem em Elm**

![Logo Elm](https://imgur.com/6dDGLdC.png)

[Link do repositório hospedado no Repl.it](https://replit.com/@GabrielSVS/2022b-perso2-Elm)

### Introdução
Uma das características que define a programação funcional é a sua maneira de lidar com funções, implicando que toda função utilizada sempre retorna algum valor em específico. Porém, funções também podem ser passadas como argumento e/ou retornar uma função como saída, aplicando, assim, o conceito de **funções de alta ordem**.
```
-- Ex.: Função que será usada como argumento
isTemp : Float -> Bool
isTemp t = t >= 37.8

hasFever : List Float -> List Float
hasFever = List.filter isTemp
```
É uma maneira muito poderosa de resolver problemas, principalmente matemáticos, definindo o que as coisas são diretamente, em vez de utilizar *loops* e *condicionais*, por exemplo. Por consequência, as ações ficam melhor separadas, facilitando o entendimento do código, e também seu refatoramento e manutenção.

### Detalhes da implementação
Foi implementada uma função simples, no *Repl.it*, que quando executada, hospeda localmente um servidor que aplica o código. No caso, ele adiciona um sufixo de escolha a palavra digitada no campo de texto, atualizando a cada caractere digitado.
Além disso, foram implementadas funções vistas em aula, e outras funções extras. Estas podem ser testadas por meio da criação de um __*Fork*__ do repositório do *repl.it*, e inserindo os seguintes comandos, no *Shell*:
```
~/ elm repl
> import Functions exposing (..)
```
O primeiro comando acessa o repositório do Elm, e o segundo, importa para o mesmo as funções criadas no arquivo *Functions.elm*. Após isso, foram chamadas as funções para os testes, via terminal.

### Exemplos
Logo abaixo, se encontram algumas funções que mesclam alguns aspectos de outras funções de alta ordem já existentes (`List.map`/`List.filter`):
```
-- List.filterMap : (a -> Maybe b) -> List a -> List b
-- String.toInt : String -> Maybe Int
numbers : List String -> List Int
numbers list = List.filterMap String.toInt list
```
A função `List.filterMap`, primeiramente, aplica a função `String.toInt`, convertendo as strings em inteiros , e somente retorna os itens que foram convertidos com sucesso, por consequência, filtrando os resultados.
```
-- List.indexedMap : (Int -> a -> b) -> List a -> List b
addIndex : List String -> List (Int,String)
addIndex list = List.indexedMap Tuple.pair list
```
Esta basicamente aplica o mesmo conceito da função `List.map`, recebendo a função `Tuple.pair` como argumento, que junta dois elementos, formando assim, uma tupla.
Neste caso, o valor que será pareado com os elementos da lista, será o número do índice no qual a String está localizada.

### Curiosidades
* [Retornos de erro](https://imgur.com/uVKiC6S.png) são bastante "amigáveis" com o usuário, bem detalhados;
* Acesso de registros em variáveis do tipo `Record` podem ser feitos em uma [ordem contrária](https://imgur.com/LbHX4QR.png), de modo que a propriedade seja digitada primeiro (função equivalente a `(\r -> r.name)`);
* [Trecho irônico](https://youtu.be/RFrKffrKCeU?t=320) de uma palestra relacionada ao Elm que encontrei (5:20 a 6:30), da Annaia Berry;

### Links:
* [Documentação Elm](https://package.elm-lang.org)

* [Guia introdutório ao Elm](https://guide.elm-lang.org)

* [LearnYouAElm (Adaptação do Haskell)](https://learnyouanelm.github.io/pages/06-higher-order-functions.html)

* [Playlist no YouTube - Sellooh](https://www.youtube.com/playlist?list=PLfvCHAw-EHeL718ZXA0HSUMUJZrmS-875)
