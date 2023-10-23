findFirst predicate = 
  foldr findHelper []
  where 
    findHelper listElement maybeFoundAcc
      | predicate listElement = [listElement]
      | otherwise = maybeFoundAcc


summa predicate =
   foldr sumIf 0
   where 
    sumIf e acc
      | predicate e = e + acc
      | otherwise = acc