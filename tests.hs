getPairs2 :: [(Int, a)] -> [(Int, a)]
getPairs2 = filter (even . fst)

getPairs3 :: [(Int, a)] -> [(Int, a)]
getPairs3 l = [x | x<-l, even (fst x)]

main = 
    print $ getPairs2 [(1, 1), (2, 2), (3, 3), (4, 4)]