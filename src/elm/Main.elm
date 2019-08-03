module Main exposing (main)

import Browser exposing (sandbox)
import Html exposing (Html, button, div, h1, text)
import Html.Events exposing (onClick)
import String exposing (fromInt)


main =
    sandbox
        { init = 0
        , view = view
        , update = update
        }


type alias Model =
    Int


type Msg
    = Increment


view : Model -> Html Msg
view model =
    button [ onClick Increment ] [ text (fromInt model) ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1
