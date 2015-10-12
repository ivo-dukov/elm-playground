type List a = Empty | Node a (List a)

sum : List Int -> Int
sum xs =
    case xs of
        Empty ->
            0

        Node first rest ->
            first + sum rest

type Tree a = Empty | Node a (Tree a) (Tree a)

type Boolean
    = T
    | F
    | Not Boolean
    | Or Boolean Boolean
    | And Boolean Boolean

true = Or T F
false = And T (Not T)