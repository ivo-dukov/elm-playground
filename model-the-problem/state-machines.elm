type User = Anonymous | LoggedIn String

userPhoto : User -> String
userPhoto user =
    case user of
        Anonymous ->
            "anon.png"

        LoggedIn name ->
            "users/" ++ name ++ "/photo.png"

activeUsers : List User
activeUsers =
    [ Anonymous
    , LoggedIn "Tom"
    , LoggedIn "Steve"
    , Anonymous
    ]

photos =
    List.map userPhoto activeUsers
