import List exposing (sum, map, length)

averageNameLength : List String -> Float
averageNameLength names =
    sum (map String.length names) / length names

isLong : { record | pages : Int } -> Bool
isLong book =
    book.pages > 400