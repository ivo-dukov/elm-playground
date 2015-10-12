import Graphics.Element exposing (show)
import Task exposing (Task, andThen)
import TaskTutorial exposing (getCurrentTime, print)

port runner : Task x ()
port runner =
    getCurrentTime `andThen` print

main =
    show "Open the Developer Console of your browser."