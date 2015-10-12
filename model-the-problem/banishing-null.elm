type Maybe a = Just a | Nothing

String.toInt : String -> Maybe Int


toMonth : String -> Maybe Int
toMonth rawString =
    case String.toInt rawString of
        Nothing ->
            Nothing

        Just n ->
            if n > 0 && n <= 12 then Just n else Nothing

