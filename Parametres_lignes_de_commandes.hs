import System.Environment

main :: IO()
main = do 
  args <- getArgs
  print $ zip args [1..] -- Ou print (zip...)
