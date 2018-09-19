-- Motif
ou :: (Bool, Bool) -> Bool
ou (True, _) = True
ou (_, True) = True
ou (False, False) = False

-- Conditionnel
ou' :: (Bool, Bool) -> Bool
ou' (x, y) = 
    if x == True
    then True
    else 
        if y == True
        then True
        else False

ou'' :: (Bool, Bool) -> Bool
ou'' (x, y)
    | x == True = True
    | y == True = True
    | otherwise = False

main = do
    print ("Ou")
    print $ ou (True, True)
    print $ ou (True, False)
    print $ ou (False, True)
    print $ ou (False, False)
    print $ ou' (True, True)
    print $ ou' (True, False)
    print $ ou' (False, True)
    print $ ou' (False, False)
    print $ ou'' (True, True)
    print $ ou'' (True, False)
    print $ ou'' (False, True)
    print $ ou'' (False, False)