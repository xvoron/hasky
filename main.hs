import Html

main :: IO ()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml = 
    html_ 
        "Page title<>"
        ( append_
            ( append_ 
                (h1_ "Welcome!")
                ( append_ 
                    (p_ "This is a simple HTML page generated in Haskell.")
                    (p_ "Enjoy coding!")
                )
            )
            (ul_ 
                [ p_ "First Item"
                , p_ "Second Item"
                ]
            )
        )

