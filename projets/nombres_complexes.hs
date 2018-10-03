type Complexe = (Float, Float)

modComp :: Complexe -> Float
modComp (r, i) = sqrt r*r+i*i

main = 
    print