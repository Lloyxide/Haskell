l1 :: [Int]
l1 = [37..42]

main = do
    print l1
    print (length l1)
    print $ take (length l1 `div` 2) l1
    print $ drop (length l1 `div` 2) l1
    print $ (splitAt ((length l1) `div` 2) l1)
