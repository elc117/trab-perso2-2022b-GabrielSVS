module Main exposing(..)

import Browser
import Html exposing (Html, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
-- Importando funções do módulo Functions.elm
import Functions exposing (..)

-- MAIN (principal)

main : Program () Model Msg
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL (estado da aplic.)

type alias Model ={ content : String }

init : Model
init = { content = "" }

-- UPDATE (atualização da aplic.)

type Msg
  = Change String


update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent -> { model | content = newContent }

-- VIEW ("tradução" da aplic. em Html)

view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Add email suffix", value model.content, onInput Change ] []
    , div [] [ text (infUfsmSuffix model.content) ]
    ]