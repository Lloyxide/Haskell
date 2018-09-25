filtragePairs :: [Int] -> [Int]
filtragePairs = filter even

filtragePairs' :: [Int] -> [Int]
filtragePairs' [] = []
filtragePairs' (x:xs) =
    if x `mod` 2 == 0
    then x : filtragePairs' xs
    else filtragePairs' xs

main = do
    print $ filtragePairs [1, 2, 4, 5, 7, 8]
    print $ filtragePairs [1, 3, 5, 7, 9]
    print $ filtragePairs' [1, 2, 4, 5, 7, 8]
    print $ filtragePairs' [1, 3, 5, 7, 9]