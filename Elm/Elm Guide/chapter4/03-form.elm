module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    { name : String
    , age : String
    , password : String
    , passwordAgain : String
    , submit : Bool
    }


init : Model
init =
    Model "" "" "" "" False



-- UPDATE


type Msg
    = Name String
    | Age String
    | Password String
    | PasswordAgain String
    | Submit Bool


update : Msg -> Model -> Model
update msg model =
    case msg of
        Name name ->
            { model | name = name }

        Age age ->
            { model | age = age }

        Password password ->
            { model | password = password }

        PasswordAgain password ->
            { model | passwordAgain = password }

        Submit submit ->
            { model | submit = True }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ viewInput "text" "Name" model.name Name
        , viewInput "text" "Age" model.age Age
        , viewInput "password" "Password" model.password Password
        , viewInput "password" "PasswordAgain" model.passwordAgain PasswordAgain
        , viewSubmit "submit" Submit
        , viewValidation model
        ]


viewInput : String -> String -> String -> (String -> Msg) -> Html Msg
viewInput t p v toMsg =
    input [ type_ t, placeholder p, value v, onInput toMsg ] []


viewSubmit : String -> Msg -> Html Msg
viewSubmit t toMsg =
    button [ onClick toMsg ] [ text t ]


viewValidation : Model -> Html Msg
viewValidation model =
    if (validateAge model).result == False then
        div [ style "color" "red" ] [ text (validateAge model).msg ]

    else if (validatePasswordLength model).result == False then
        div [ style "color" "red" ] [ text (validatePasswordLength model).msg ]

    else if (validatePasswordCharType model).result == False then
        div [ style "color" "red" ] [ text (validatePasswordCharType model).msg ]

    else if (validatePasswordMatch model).result == False then
        div [ style "color" "red" ] [ text (validatePasswordMatch model).msg ]

    else
        div [ style "color" "green" ] [ text "OK" ]


validateAge : Model -> { result : Bool, msg : String }
validateAge model =
    if String.toInt model.age == Nothing then
        { result = False, msg = "Age should be Digit!" }

    else
        { result = True, msg = "" }


validatePasswordLength : Model -> { result : Bool, msg : String }
validatePasswordLength model =
    if String.length model.password >= 8 then
        { result = True, msg = "" }

    else
        { result = False, msg = "Password is too short!" }


validatePasswordCharType : Model -> { result : Bool, msg : String }
validatePasswordCharType model =
    if String.any Char.isUpper model.password == True && String.any Char.isLower model.password == True && String.any Char.isDigit model.password == True then
        { result = True, msg = "" }

    else
        { result = False, msg = "Password does not include Upper, Lower and Digit!" }


validatePasswordMatch : Model -> { result : Bool, msg : String }
validatePasswordMatch model =
    if model.password == model.passwordAgain then
        { result = True, msg = "" }

    else
        { result = False, msg = "Passwords do not match!" }
