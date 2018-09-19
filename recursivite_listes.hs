taille :: [a] -> Int
taille [] = 0
taille (x:xs) = 1 + taille xs

element :: Eq a => [a] -> a -> Bool
element [] _ = False
element (x:xs) e = (x == e) || element xs e 

mini :: Num a => [a] -> a
mini [x] = x
mini (x:y:xs) = 
    if x <= y
    then mini x:xs
    else mini y:xs

main = do 
    print $ taille [1, 2, 3, 4]
    print $ taille [1, 2, 3, 4, 12, 45, 78, 89 ,56, 23, 12, 15]
    print $ element [1, 2, 3, 4] 2
    print $ element [1, 2, 3, 4] 5
    print $ mini [1, 2, 3, 4]