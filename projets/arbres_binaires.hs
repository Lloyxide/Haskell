data Arbre = Nil
           | Noeud0
           | Noeud1
           | Noeud2
           deriving (Show)

data Noeud0 = Nil deriving (Show)

data Noeud1 = Int Arbre
            deriving (Show)

data Noeud2 = Int Arbre Arbre 
            deriving (Show)

main = do
    let a = Arbre (Noeud2 15 (Noeud0) (Noeud1 7 (Noeud0)))