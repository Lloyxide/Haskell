-- doubler x = x * 2
doubler = (*2)

--tete xs = head xs
tete = head

--fTete xs = 2 * sqrt (head xs)
ftete = (2*).sqrt.head

--twice f x = f (f x)
twice :: (a->a) -> a -> a
twice f = f.f


main = do
    print $ doubler 2
    print $ tete [12, 2, 5]
    print $ ftete [16, 2, 3]