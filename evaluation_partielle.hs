mul42 :: Int -> Int
mul42 = (*) 42 -- ou (42*)

null' :: Int -> Bool
null' = (==) 0

getElem2' :: [Int] -> Int
getElem2'  = (flip (!!)) 1

main = do
    print $ mul42 2
    print $ null' 0
    print $ getElem2' [1, 5, 3]