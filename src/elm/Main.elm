module Main exposing (main)

import Browser exposing (sandbox)
import Html exposing (Html, button, div, h1, h2, p, text)
import Html.Attributes exposing (class)
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
    div [ class "elm-view" ]
        [ button [ onClick Increment ] [ text ("+ " ++ fromInt model) ]
        , h2 [] [ text "This section controlled by Elm" ]
        ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1
