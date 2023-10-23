fib n | n == 0 = 0
fib n | n == 1 = 1
fib n | n > 1 = fib ( n-2 ) + fib ( n-1 )

fibPro :: Int -> Integer
fibPro n
    | n < 0     = error "Il numero deve essere non negativo."
    | n == 0    = 0
    | n == 1    = 1
    | otherwise = fib' 0 1 2 n
  where
    fib' a b current target
        | current == target = a + b
        | otherwise         = fib' b (a + b) (current + 1) target

pairFib index =
     (index,fibPro index)

  



-- list di tutti i numeri di fibonacci
-- non lanciare da sola perche cicla infinito
fibs = map pairFib [0..]

smallFibs = takeWhile (\(f,s) -> f < 20) fibs
