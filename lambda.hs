mul42 = \x -> x*42

foisTroisPlusUn = (\y->y+1).(\x->x*3)

main = do
    print $ mul42 2
    print $ foisTroisPlusUn 2