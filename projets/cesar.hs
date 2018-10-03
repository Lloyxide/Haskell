import Data.Char
import System.Environment

decaler :: Int -> Char -> Char
decaler x c = if isLower c then c' else c
        where c' = chr $ ((ord c - ord 'a' + x) `mod` 26) + ord 'a'

chiffrerCesar :: Int -> String -> String
chiffrerCesar _ [] = []
chiffrerCesar i (x:xs) = decaler i x :chiffrerCesar i xs

compterOccurences :: Char -> String -> Int
compterOccurences c = length . filter (==c)

compterLettres :: String -> Int
compterLettres = length . filter isLower

frequencesUk :: [Float]
frequencesUk = [0.082, 0.015, 0.028, 0.043, 0.127, 0.022, 0.02, 0.061, 0.07,
                0.002, 0.008, 0.04, 0.024, 0.067, 0.075, 0.019, 0.001, 0.06,
                0.063, 0.091, 0.028, 0.01, 0.024, 0.002, 0.02, 0.001]

calculerFrequences :: String -> [Float]
calculerFrequences s = [fromIntegral (compterOccurences c s)/nb | c <- ['a'..'z']]
                where nb = fromIntegral $ compterLettres s

calculerChi2 :: [Float] -> [Float] -> Float
calculerChi2 xs fs = sum $ map fErr $ zip xs fs
            where fErr (fi', fi) = (fi'-fi)**2/fi

casserCesar :: String -> [Float] -> Int
casserCesar s freq = snd $ minimum $ zip errs [0..]
            where errs = map f [0..25]
                  f n = calculerChi2 (calculerFrequences (chiffrerCesar n s)) freq

main :: IO()
main = do 
    args <- getArgs
    if length args < 1
    then print "Veuillez entrer un argument."
    else do
        print $ head args
        s <- readFile $ head args
        let k = casserCesar s frequencesUk
        print k
        let r = chiffrerCesar k s
        print r