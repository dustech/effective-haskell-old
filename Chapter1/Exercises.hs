import Data.Time.Format.ISO8601 (yearFormat)

factorial x =
  foldr (*) 1 [1 .. x]

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
  
-- myCurry fn myTuple = fn (fst myTuple) (snd myTuple)

-- qui affermo che myCurry
-- accetta una funzione che accetta una tupla e ritorna un valore
-- e restituisce una funzione che accetta 
-- una funzione che rest un valore

myCurry fn x y = fn (x,y)

add (x,y) = x + y

myUncurry fn (x,y) = fn x y

add' x y = x + y
