
quicksortC :: Ord a => [a] -> [a]
quicksortC [] = []
quicksortC (x:xs) = quicksortC xs1 ++ [x] ++ quicksortC xs2
    where xs1 = [u | u<-xs, u < x]
          xs2 = [u | u<-xs, u > x]


quicksortD :: Ord a => Num a => [a] -> [a]
quicksortD [] = []
quicksortD (x:xs) = xs1 ++ [x] ++ xs2
    where xs1 = quicksortD [u | u<-xs, u > x]
          xs2 = quicksortD [u | u<-xs, u < x]


main = do
    print $ quicksortC [12, 56, 54, 13, 45, 85, 4, 15, 23, 32, 12, 2, 48, 56, 25, 65]
    print $ quicksortD [12, 56, 54, 13, 45, 85, 4, 15, 23, 32, 12, 2, 48, 56, 25, 65]
    print $ quicksortC ['h', 'j', 'i', 'l', 'p', 'r', 'a', 'm', 'b', 'r', 'g', 'o', 'b', 'c']