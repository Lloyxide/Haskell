main = do
  print $ double 3
  print $ twice double 3
  print $ pair 2 3 
  print $ second [1, 2, 5, 6, 3]
  print $ swap (2, 5)
  print $ palindrome ['a', 'b', 'c']
  print $ palindrome ['a', 'b', 'b', 'a']

second :: [a] -> a  
second xs = head (tail xs) 

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> b -> (a, a)
pair x y = (x, y)

double :: Num a => a -> a
double x = x*2

palindrome :: [a] -> Bool
palindrome xs = reverse xs == xs 

twice :: (a -> a) -> (a -> a)
twice f x = f (f x)

