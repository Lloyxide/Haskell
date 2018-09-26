multiples :: Int -> [(Int, Int)]
multiples n = [(u, v) | u<-[1..n], v<-[u..n], u*v == n]

tripletsPyth :: Int -> [(Int, Int, Int)]
tripletsPyth n = [(x,y,z) | x<-[1..n], y<-[1..n], z<-[y..n], (x*x)==(y*y)+(z*z)]

main = do
    print [x | x<-[0..42], even x]
    print $ filter even [0..42]
    print [0, 2 .. 42]
    print [if even x then x else (-x) | x<-[2..13]]
    print $ multiples 12
    print $ tripletsPyth 10