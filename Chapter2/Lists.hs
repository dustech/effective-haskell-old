l = [[1],[2,2],[1,2,3]]

myList = ["head","tail"]
myHead = head myList
myTail = tail myList


factors num =
  factors' num 2
  where 
    factors' num fact
      | num == 1 = []
      | (num `rem` fact) == 0 = fact:factors' (num `div` fact) fact
      | otherwise = factors' num (fact + 1)

{- 
computazione:

f 10?

f' 10 2

10 r 2 = 0 -> 2: f' 5 2
  5 r 2 <> 0 -> f' 5 3
  ...
  5 r 5 = 0 -> 5: f' 1 5
  end
ricostruisce 2:5:[]

-}

