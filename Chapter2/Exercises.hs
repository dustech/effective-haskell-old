-- foldl
-- prende una lista
-- prende una funzione di aggregazione
-- prende un accumulatore con valore iniziale

-- aggrel x y = [y] <> x
-- aggrer x y = [x] <> y
-- invertil = foldl aggrel [] [1..100]
-- invertir = foldr aggrer [] [1..100]

invertil :: Foldable t => t a -> [a]
invertil = foldl aggrel []
  where
    aggrel x y = [y] <> x

invertir :: Foldable t => t a -> [a]
invertir = foldr aggrer []
  where
    aggrer x y = [x] <> y

zippy [] _ = []
zippy _ [] = []
zippy (x:xs) (y:ys) =
  [(x,y)] <> zippy xs ys

zippyc [] _ _ = []
zippyc _ [] _ = []
zippyc (x:xs) (y:ys) connector =
  [connector x y] <> zippyc xs ys connector
  

zippyco xs ys = [(x,y) | x <- xs, y <- ys]

-- pairs' as bs = [(a, b) | a <- as, a `elem` bs, b <- bs, odd b]


