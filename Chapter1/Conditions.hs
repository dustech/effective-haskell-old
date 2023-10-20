module Main where

handleSmallNumber num =
  if num < 10
  then print num
  else print "il numero e' troppo grande!"

guardSize num
  | num < 3 = "numero piccino"
  | num < 10 = "numero medio"
  | num < 100 = "numero cicciotto"
  | num < 1000 = "numero molto grosso!"
  | otherwise = "numero immenso!! " <> show num

bonzo myBonzo | otherwise = "Bonzo sei " <> myBonzo

main = putStr "main run"