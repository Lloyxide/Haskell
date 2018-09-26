supprimer1 :: Eq a => [a] -> a -> [a]
supprimer1 (x:xs) v = 
    if x == v
    then xs
    else x : supprimer1 xs v 

main = do
    print $ supprimer1 [1, 2, 3, 4, 5, 6, 7, 8, 9] 5
    print $ supprimer1 [1, 2, 3, 4, 4, 5, 6, 7, 8, 9] 4