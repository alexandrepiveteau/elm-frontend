module ComingSoon exposing (..)

import Html exposing (Html)
import Html.Attributes as Attr


view : Html msg
view =
    Html.div
        [ Attr.class "shadow rounded bg-gray-800"
        , Attr.class "w-96 lg:w-1/3 p-8 m-auto"
        , Attr.class "flex flex-col space-y-4"
        ]
        [ Html.h1
            [ Attr.class "text-3xl font-semibold text-gray-300" ]
            [ Html.text "Coming soon" ]
        , Html.p
            [ Attr.class "text-xl text-gray-500" ]
            [ Html.text "This site is still under construction. Please come back in a few days and we'll have more to show !" ]
        , Html.a
            [ Attr.href "https://github.com/markdown-party"
            , Attr.class "text-blue-300 visited:text-purple-300 underline"
            ]
            [ Html.text "Check the project out on Github" ]
        ]
