doubler1 :: [Int] -> [Int]
doubler1 [] = []
doubler1 (x:xs) = (2 * x) : doubler1 xs

doubler2 :: [Int] -> [Int]
doubler2 l = [x*2 | x<-l]

doubler3 :: [Int] -> [Int]
doubler3 = map (*2)

main = do
    print $ doubler1 [1..5]
    print $ doubler2 [1..5]
    print $ doubler3 [1..5]