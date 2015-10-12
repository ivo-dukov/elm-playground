import Graphics.Element exposing (show)
import Task exposing (Task, andThen, succeed)
import TaskTutorial exposing (getCurrentTime, print)
import Time exposing (Time)

getDuration : Task x Time
getDuration =
    getCurrentTime
        `andThen` \start -> succeed (fibonacci 20)
        `andThen` \fib -> getCurrentTime
        `andThen` \end -> succeed (end - start)


fibonacci : Int -> Int
fibonacci n =
    if n <= 2 then
        1
    else
        fibonacci (n - 1) + fibonacci (n - 2)


port runner : Task x ()
port runner =
    getDuration `andThen` print


main =
    show "Open the Developer Console of your browser."