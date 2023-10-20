module Main where


-- Given a number, fizzBuzzCount, 
-- return a string that contains all of 
--   the numbers from one, 
-- up to and including fizzBuzzCount, except:

-- If the number is evenly divisible by 3, 
-- but not evenly divisible by 5, 
-- replace it with the word “fizz”.

-- If the number is evenly divisible by 5, 
-- but not evenly divisible by 3, 
-- replace it with the word “buzz”.

-- If the number is evenly divisible by both 3 and 5,
-- replace it with the word “fizzbuzz”.

expandTo fizzBuzzCount =
  [1 .. fizzBuzzCount]

fizzy num
  | evenlyByBoth = "fizzbuzz"
  | evenlyBy3 = "fizz"
  | evenlyBy5 = "buzz"  
  | otherwise = show num
  where 
    evenlyBy3 = num `mod` 3 == 0
    evenlyBy5 = num `mod` 5 == 0
    evenlyByBoth = num `mod` 15 == 0

fizzBuzz fizzBuzzCount =
  map fizzy $ expandTo fizzBuzzCount 

fizzBuzz'  =
  map fizzy . expandTo  

fiz =
  foldr (<>) [] . fizzBuzz' 

main = print "ciccio"