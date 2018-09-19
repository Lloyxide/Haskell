main = do
  print $ disque 5
  print $ triangle 0 0 1 1 0 1
  
disque :: Floating a => a -> a
disque r = 2 * r * pi

triangle :: Floating a => a -> a -> a -> a -> a -> a -> a
--triangle xa ya xb yb xc yc = sqrt(((xb-xa)**2)+(yb-ya)**2) + sqrt(((xb-xc)**2)+(yb-yc)**2) + sqrt(((xc-xa)**2)+(yc-ya)**2)
triangle xa ya xb yb xc yc = ab + ac + bc
    where dist x1 x2 y1 y2 = sqrt(((x1-x2)**2)+(y1-y2)**2)
          ab = dist xa xb ya yb
          bc = dist xb xc yb yc
          ac = dist xa xc ya yc