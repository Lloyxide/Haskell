data Liste = Nil | Cons Int Liste
data ListeA a = NilA | ConsA a (ListeA a)

showListe :: Liste -> String
showListe Nil = ""
showListe (Cons i l) = show i ++ " " ++ showListe l 

{-convertListe :: Liste -> [Int]
convertListe Nil = []
convertListe (Cons i l) = i:convertListe l-}

convertListe :: [Int] -> Liste
convertListe = foldr Cons Nil 

sumListe :: Liste -> Int
sumListe Nil = 0;
sumListe (Cons i l) = i + sumListe l

showListeA :: Show a => ListeA a -> String
showListeA NilA = ""
showListeA (ConsA i l) = show i ++ " " ++ showListeA l

convertListeA :: [a] -> ListeA a
convertListeA = foldr ConsA NilA 

{-convertListeA :: ListeA -> [Int]
convertListeA NilA = []
convertListeA (ConsA i l) = i:convertListeA l-}

sumListeA :: Num a => ListeA a -> a
sumListeA NilA = 0;
sumListeA (ConsA i l) = i + sumListeA l

main = do
    let l = ConsA 'a' (ConsA 'b' (ConsA 'c' NilA))
    print $ showListeA l
    print $ showListeA (convertListeA "bonjour")
    print $ sumListeA (ConsA 15.24 (ConsA 12.14 (ConsA 15.48 NilA)))
    --print $ sumListeA l