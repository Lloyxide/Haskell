mappingDoubler :: Num a => [a] -> [a]
mappingDoubler = map (*2)

mappingDoubler' :: Num a => [a] -> [a]
mappingDoubler' [] = []
mappingDoubler' (x:xs) = (2*x) : mappingDoubler' xs

main = do 
    print $ mappingDoubler [1, 2, 3, 4, 5]
    print $ mappingDoubler []
    print $ mappingDoubler' [1, 2, 3, 4, 5]
    print $ mappingDoubler' []