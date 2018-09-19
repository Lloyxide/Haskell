null' :: [a] -> Bool
null' [] = True
null' _ = False
 
head' :: [a] -> a
head' (a:_) = a 

tail' :: [a] -> [a]
tail' (_:as) = as 

fst' :: (a, b) -> a
fst' (x, _) = x

snd' :: (a, b) -> b
snd' (_, y) = y

main = do
    print $ null' []
    print $ null' [1, 2]
    print $ head' [1]
    print $ head' [2, 5]
    print $ head' [3, 5, 16]
    print $ tail' [4]
    print $ tail' [14, 5]
    print $ tail' [8, 5, 6]
    print $ fst' (0, 1)
    print $ snd' (0, 1)