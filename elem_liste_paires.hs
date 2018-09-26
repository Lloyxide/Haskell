premiers1 :: [(a, b)] -> [a]
premiers1 [] = []
premiers1 ((x, y):xs) = x : premiers1 xs 

premiers2 :: [(a, b)] -> [a]
premiers2 l = [fst x | x<-l] -- [u | (u, v)<-l]

premiers3 :: [(a, b)] -> [a]
premiers3 = map fst

main = do
    print $ premiers1 [('u', 5), ('i', 8), ('l', 5)]
    print $ premiers1 [(5, 5), (4, 8), (2, 5)]
    print $ premiers2 [('u', 5), ('i', 8), ('l', 5)]
    print $ premiers2 [(5, 5), (4, 8), (2, 5)]
    print $ premiers3 [('u', 5), ('i', 8), ('l', 5)]
    print $ premiers3 [(5, 5), (4, 8), (2, 5)]