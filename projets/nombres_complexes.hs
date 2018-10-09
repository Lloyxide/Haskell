type Complexe = (Float, Float)

complexe :: Float -> Float -> Complexe
complexe r i = (r, i)

modComp :: Complexe -> Float
modComp (r, i) = sqrt(r*r + i*i)

conjComp :: Complexe -> Complexe
conjComp (r, i) = (r, -i);

addComp :: Complexe -> Complexe -> Complexe
addComp (r, i) (r2, i2) = (r+r2, i+i2)

main = do
    print $ modComp $ complexe 5 2
    print $ modComp $ complexe 15 20
    print $ conjComp $ complexe 5 2
    print $ conjComp $ complexe 15 20
    print $ addComp (complexe 5 2) (complexe 6 3)
