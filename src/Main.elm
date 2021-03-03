module Main exposing (..)

import Browser
import ComingSoon
import Html exposing (Html)
import Html.Attributes as Attr


type alias Model =
    ()


{-| The main entry point of the app.
-}
main : Program () Model Never
main =
    Browser.sandbox
        { init = ()
        , update = \_ _ -> ()
        , view = \_ -> content
        }


content : Html msg
content =
    Html.div
        [ Attr.class "h-screen w-full"
        , Attr.class "flex flex-col items-center justify-center"
        ]
        [ ComingSoon.view ]
