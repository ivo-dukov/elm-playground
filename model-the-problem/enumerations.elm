type Visibility = All | Active | Completed

toString : Visibility -> String
toString visibility =
    case visibility of
        All ->
            "All"
        Active ->
            "Active"
        Completed ->
            "Completed"