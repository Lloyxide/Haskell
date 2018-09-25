reductionSomme :: Num a => [a] -> a
reductionSomme = foldr (+) 0

reductionSomme' :: Num a => [a] -> a
reductionSomme' [] = 0
reductionSomme' (x:xs) = x + reductionSomme' xs

main = do
    print $ reductionSomme [1, 2, 3, 4, 5, 6]
    print $ reductionSomme [1, 1, 1, 1, 1, 1]
    print $ reductionSomme' [1, 2, 3, 4, 5, 6]
    print $ reductionSomme' [1, 1, 1, 1, 1, 1]