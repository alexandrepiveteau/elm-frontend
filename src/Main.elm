module Main exposing (..)

import Browser
import Html exposing (Html)
import Html.Events


type alias Model =
    Int


type Message
    = Increment
    | Decrement


{-| The main entry point of the app.
-}
main : Program () Model Message
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : Model
init =
    0


update : Message -> Model -> Model
update message model =
    case message of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Message
view value =
    Html.div []
        [ Html.h1 [] [ Html.text <| "Clicked " ++ String.fromInt value ++ " times" ]
        , Html.button [ Html.Events.onClick Increment ] [ Html.text "Increment" ]
        , Html.button [ Html.Events.onClick Decrement ] [ Html.text "Decrement" ]
        ]
