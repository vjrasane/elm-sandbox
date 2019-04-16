import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = Closed, update = update, view = view }

-- MODEL

type Model = Open | Closed

-- UPDATE

type Msg = Toggle

toggle : Model -> Model
toggle model =
      case model of
        Open ->
          Closed
        Closed ->
          Open


update msg model =
  case msg of
    Toggle ->
      toggle model

-- VIEW

className : Model -> String
className model =
  case model of
    Open ->
      "open"
    Closed ->
      "closed"

view model =
  div [ class (className model), onClick Toggle  ] [ ]