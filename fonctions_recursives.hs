-- PGCD
pgcd :: Int -> Int -> Int
pgcd a b = 
    if b == 0 
    then a
    else pgcd b (mod a  b)

-- Factorielle
facto :: Int -> Int
facto 0 = 1
facto x = x * facto (x-1)

-- Recursivite terminale
facto' :: Int -> Int
facto' = aux 1
    where aux acc 0 = acc
          aux acc n = aux (acc*n) (n-1)

-- Puissance
puissance :: Int -> Int -> Int
puissance x 1 = x
puissance x y = x * puissance x (y-1) 

main = do
    print $ pgcd 10 6
    print $ pgcd 24 48
    print $ facto 7
    print $ facto' 7
    print $ puissance 5 3
    print $ puissance' 5 3 0