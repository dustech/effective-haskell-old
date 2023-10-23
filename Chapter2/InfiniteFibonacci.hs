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

pairFib fibStrategy index =
     (index, fibStrategy index)

  



-- list di tutti i numeri di fibonacci
-- non lanciare da sola perche cicla infinito
fibs algoritm = map ( pairFib algoritm ) [0..]

smallFibs x = takeWhile (\(f,s) -> f < x) $ fibs fibPro

lazyFib fstFib sndFib =
  fstFib : lazyFib sndFib nextFib
  where
    nextFib = fstFib + sndFib

lazyFibs = lazyFib 0 1

-----------------------

ultraLazyfib = 0 : 1 : magic ultraLazyfib (tail ultraLazyfib)
  where
    magic (x:xs) (y:ys) = x + y : magic xs ys

pairer = zip [1..]  

ultraLazyFibs x = takeWhile (\(i,v) -> i <= x) $ pairer ultraLazyfib