concat1 :: [[a]] -> [a]
concat1 [] = []
concat1 (x:xs) = x ++ concat1 xs

concat2 :: [[a]] -> [a]
concat2 l = [y | x<-l, y <-x]

concat3 :: [[a]] -> [a]
concat3 = concat

main = do
    print $ concat1 [[1..7], [8..15], [16..25]]
    print $ concat2 [[1..7], [8..15], [16..25]]
    print $ concat3 [[1..7], [8..15], [16..25]]