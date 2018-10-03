data Jour = Lundi 
          | Mardi 
          | Mercredi 
          | Jeudi 
          | Vendredi 
          | Samedi 
          | Dimanche
          deriving (Eq, Show)

estWeekend :: Jour -> Bool
estWeekend j = (j == Samedi) || (j == Dimanche)
-- estWeekend Samedi = true
-- estWeekend Dimanche = true
-- estWeekend _ = false

compterOuvrables :: [Jour] -> Int
compterOuvrables = length . filter (not . estWeekend)

main = do
    print $ estWeekend Lundi
    print $ estWeekend Dimanche
    print $ compterOuvrables [Samedi, Lundi, Mardi, Vendredi, Dimanche, Mardi]