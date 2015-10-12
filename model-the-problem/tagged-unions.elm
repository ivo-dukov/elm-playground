type Scale = Normal | Logarithmic

type Widget
    = ScatterPlot (List (Int, Int))
    | LogData (List String)
    | TimePlot Scale (List (Time, Int))

view : Widget -> Element
view widget =
    case Widget of
        ScatterPlot points ->
            viewScatterPlot points

        LogData logs ->
            flow down (map viewLog logs)

        TimePlot occurances ->
            viewTimePlot occurances