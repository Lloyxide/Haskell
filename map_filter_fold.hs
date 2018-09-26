absList :: [Int] -> [Int]
absList = map abs

maxList :: [Int] -> Int
maxList = maximum

first3 :: [String] -> [String]
first3 = map (take 3) 

main = do 
    print $ absList [0, 1, 2, 3]
    print $ absList [-1, 2, -3]
    print $ maxList [0, 1, 2, 3]
    print $ maxList [-1, 2, -3]
    print $ first3 ["Bonjour", "je", "suis", "le", "pain"]