doubleOdds = [2 * num | num <- [0..10], odd num]

doubleOdds' =map (*2 ). filter odd $ [1..10]

pairs as bs =
  let as' = filter (`elem` bs) as
      bs' = filter odd bs
      mkPairs a = map (\b -> (a,b)) bs'
  in concat $ map mkPairs as'

pairs' as bs = [(a, b) | a <- as, a `elem` bs, b <- bs, odd b]

