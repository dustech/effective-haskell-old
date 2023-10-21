module FoldExamples where
import Prelude hiding(foldl,foldr)
import System.Posix.Internals (lstat)

foldl func carryValue lst
  | null lst = carryValue
  | otherwise = foldl func (func carryValue (head lst)) (tail lst)

foldr func carryValue lst
  | null lst = carryValue
  | otherwise = func (head lst) $ foldr func carryValue (tail lst)



    -- The l in foldl stands for left associative.

    -- In a left fold, the initial value is applied first, at the left-hand side of the unrolled expression.

    -- In a left fold the accumulator value is the first (left) argument of the function you pass in.

    -- The r in foldr stands for right associative.

    -- In a right fold, the initial value is applied last, at the right-hand side of an unrolled expression.

    -- In a right fold, the accumulator is the second (right) argument of the function that you pass in.