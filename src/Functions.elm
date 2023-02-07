module Functions exposing (..)

-- Algumas funções vistas em aula (aprendendo a aplicar a sintaxe)
isTemp : Float -> Bool
isTemp t = t >= 37.8

hasFever : List Float -> List Float
hasFever = List.filter isTemp

hasFeverTwo : List Float -> List Float
hasFeverTwo = List.filter (\x -> x >= 37.8)

itemize : List String -> List String
itemize = List.map (\x -> "<li>" ++ x ++ "</li>")

bigCircles : Float -> List Float -> List Float
bigCircles f list = List.filter (\x -> pi*x^2 > f) list

quarentine : List (String,Float) -> List (String,Float)
quarentine = List.filter (\(_,b) -> isTemp b)

agesIn : List Int -> Int -> List Int
agesIn list age = List.map (\x -> age - x) list

-- Testando passagem de módulos para a Main.elm
infUfsmSuffix : String -> String
infUfsmSuffix str = str ++ "@inf.ufsm.br"

--Algumas funções não vistas em aula
-- List.filterMap : (a -> Maybe b) -> List a -> List b
numbers : List String -> List Int
numbers list = List.filterMap String.toInt list

-- List.indexedMap : (Int -> a -> b) -> List a -> List b
addIndex : List String -> List (Int,String)
addIndex list = List.indexedMap Tuple.pair list