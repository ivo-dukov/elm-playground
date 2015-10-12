import Graphics.Element exposing (Element, show)
import Task exposing (Task, andThen)
import TaskTutorial exposing (getCurrentTime, print)

main : Signal Element
main =
    Signal.map show contentMailbox.signal


contentMailbox : Signal.Mailbox String
contentMailbox =
    Signal.mailbox ""


port updateContent : Task x ()
port updateContent =
    Signal.send contentMailbox.address "hello!"