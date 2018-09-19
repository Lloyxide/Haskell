import Control.Monad
import System.Exit (exitSuccess)

quitText = "quit"
quitting = exitSuccess

main = forever $ do
  putStr "Entrez votre nom : "
  nom <- getLine
  if nom == quitText then quitting else putStrLn ("Bienvenue, " ++ nom)
