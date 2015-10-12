import Graphics.Element exposing (show)
import Http
import Json.Decode as Json
import Task exposing (Task, andThen, toResult)
import TaskTutorial exposing (print)


get : Task Http.Error (List String)
get =
    Http.get (Json.list Json.string) "http://example.com/hat-list.json"


safeGet : Task x (Result Http.Error (List String))
safeGet =
    Task.toResult get


port runner : Task x ()
port runner =
    safeGet `andThen` print


main =
    show "Open the Developer Console of your browser."