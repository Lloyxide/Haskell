taille :: [a] -> Int
taille [] = 0
taille (x:xs) = 1 + taille xs

element :: Eq a => [a] -> a -> Bool
element [] _ = False
element (x:xs) e = (x == e) || element xs e 

mini :: Ord a => Num a => [a] -> a
mini [x] = x
mini (x:y:xs) = 
    if x <= y
    then mini (x:xs)
    else mini (y:xs)

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' 1 x = [x]
replicate' n x = x : replicate' (n - 1) x

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs) = f x && all' f xs 

inter :: Eq a => Int -> a -> [a] -> [Int]
inter _ _ [] = []
inter c v (x:xs) =  
    if x == v
    then c : inter (c+1) v xs
    else inter (c+1) v xs

positions :: Eq a => a -> [a] -> [Int]
positions _ [] = []
positions v l = inter 0 v l

main = do 
    print $ taille [1, 2, 3, 4]
    print $ taille [1, 2, 3, 4, 12, 45, 78, 89 ,56, 23, 12, 15]
    print $ element [1, 2, 3, 4] 2
    print $ element [1, 2, 3, 4] 5
    print $ mini [12, 2, 3, 4]
    print $ replicate' 3 5
    print $ replicate' 12 2
    print $ all' even [2, 4, 24, 26, 48]
    print $ all' even [2, 5, 3, 4, 8]
    print $ positions 42 [12, 23, 45, 42, 25, 42]
    print $ positions 42 []
