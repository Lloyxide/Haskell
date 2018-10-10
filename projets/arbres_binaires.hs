data Arbre = Noeud0 Int
           | Noeud1 Int Arbre
           | Noeud2 Int Arbre Arbre
           deriving (Show)

taille :: Arbre -> Int
taille (Noeud0 _) = 1
taille (Noeud1 _ a) = 1 + taille a
taille (Noeud2 _ g d) = 1 + taille d + taille g

profondeur :: Arbre -> Int
profondeur (Noeud0 _) = 1
profondeur (Noeud1 _ a) = 1 + profondeur a
profondeur (Noeud2 _ g d) = 1 + max (profondeur g) (profondeur d)

estEquilibre :: Arbre -> Bool
estEquilibre (Noeud0 _) = True
estEquilibre (Noeud1 _ a) = 
estEquilibre (Noeud2 _ g d) = 

main :: IO ()
main = do
    let arbres = 
            [
            Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud0 37)),

            Noeud2 12 (Noeud0 3) (Noeud2 7 (Noeud0 37) (Noeud0 13)),
            
            Noeud1 12 (Noeud2 7 (Noeud0 13) (Noeud0 37)), 

            Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud1 13 (Noeud0 37)))
            ]
    print "Arbres"
    mapM_ print arbres
    print "Tailles"
    mapM_ (print . taille) arbres
    print "Profondeurs"
    mapM_ (print . profondeur) arbres

    {-let arbre1 = Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud0 37))
    let arbre2 = Noeud2 12 (Noeud0 3) (Noeud2 7 (Noeud0 37) (Noeud0 13))
    let arbre3 = Noeud1 12 (Noeud2 7 (Noeud0 13) (Noeud0 37))
    let arbre4 = Noeud2 12 (Noeud1 3 (Noeud0 42)) (Noeud1 7 (Noeud1 13 (Noeud0 37)))
    print "Arbre 1"
    print $ show arbre1
    print $ taille arbre1
    print $ profondeur arbre1
    print "Arbre 2"
    print $ show arbre2
    print $ taille arbre2
    print $ profondeur arbre2
    print "Arbre 3"
    print $ show arbre3
    print $ taille arbre3
    print $ profondeur arbre3
    print "Arbre 4"
    print $ show arbre4
    print $ taille arbre4
    print $ profondeur arbre4-}
    
