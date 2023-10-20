
factorial x =
  foldr (*) 1 [1 .. x]

fib n | n == 0 = 0
fib n | n == 1 = 1
fib n | n > 1 = fib ( n-2 ) + fib ( n-1 )
