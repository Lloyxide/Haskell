data Figure = Carre Float
            | Rectangle Float Float
            | Disque Float
            deriving (Show)

showFigure :: Figure -> String
showFigure (Carre c) = "Carre de cote " ++ show c
showFigure (Rectangle l h) = "Rectangle de longueur " ++ show l ++ " et de hauteur " ++ show h
showFigure (Disque r) = "Disque de rayon " ++ show r

calculerAire :: Figure -> Float
calculerAire (Carre c) = c*c
calculerAire (Rectangle l h) = l*h
calculerAire (Disque r) = 3.14*r*r

main = do
    print $ showFigure (Carre 12)
    print $ calculerAire (Carre 12)
    print $ showFigure (Rectangle 15 2)
    print $ calculerAire (Rectangle 15 2)
    print $ showFigure (Disque 2)
    print $ calculerAire (Disque 2)