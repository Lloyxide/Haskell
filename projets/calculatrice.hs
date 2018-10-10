data Expr = Mul Expr Expr
          | Add Expr Expr 
          | Val Int
          deriving (Show)

evaluer :: Expr -> Int
evaluer (Val v) = v
evaluer (Mul v1 v2) = evaluer v1 * evaluer v2
evaluer (Add v1 v2) = evaluer v1 + evaluer v2

parse :: [String] -> (Expr, [String])
parse (x:xs) 
    | x == "*" = (Mul e1 e2, str2)
    | x == "+" = (Add e1 e2, str2)
    | otherwise = (Val (read x), xs)
    where (e1, str1) = parse xs
          (e2, str2) = parse str1

main = do 
    let ex = Mul (Add (Val 1) (Val 2)) (Val 3) 
        str = "* + 1 2 3"
    print ex
    print $ evaluer ex
    print $ fst $ parse $ words str