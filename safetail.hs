-- Expression conditionnelle
safetail1 :: [Char] -> [Char]
safetail1 l = if null l then [] else drop 1 l

-- Gardes
safetail2 :: [Char] -> [Char]
safetail2 l
    | null l = []
    | otherwise = drop 1 l

-- Motif
safetail3 :: [Char] -> [Char]
safetail3 [] = []
safetail3 (_:as) = as 

main = do
    print $ safetail1 []
    print $ safetail1 ['a', 'b', 'c']
    print $ safetail2 []
    print $ safetail2 ['a', 'b', 'c']
    print $ safetail3 []
    print $ safetail3 ['a', 'b', 'c']