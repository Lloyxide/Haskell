main = do
    print $ estPair 2
    print $ estMemeSigne 2 0 

estPair :: Int -> Bool
estPair a = a `mod` 2 == 0

estMemeSigne :: Int -> Int -> Bool
estMemeSigne a b = ((a > 0) && (b > 0) || (a < 0) && (b < 0))