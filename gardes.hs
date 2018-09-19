analyseTemp :: Int -> String
analyseTemp t 
    | t < (-20) = "frisquet"
    | t < 20 = "nirvana"
    | otherwise = "canicule"

analyseTemp' :: Int -> String
analyseTemp' t = 
    if t < (-20) 
    then "frisquet" 
    else 
        if t < 20 
        then "nirvana" 
        else "canicule"

main = do
    print $ analyseTemp (-30)
    print $ analyseTemp 0
    print $ analyseTemp 30
    print $ analyseTemp' (-30)
    print $ analyseTemp' 0
    print $ analyseTemp' 30