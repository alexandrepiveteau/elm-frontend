module Main exposing (..)

import Browser
import Html exposing (Html)
import Html.Attributes
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
        , button "Increment" [ Html.Events.onClick Increment ]
        , button "Decrement" [ Html.Events.onClick Decrement ]
        ]


button : String -> List (Html.Attribute Message) -> Html Message
button text attrs =
    Html.button
        (Html.Attributes.class "shadow p-2 rounded hover:shadow-md transition-all bg-blue-100 border-2 border-blue-200" :: attrs)
        [ Html.text text ]
