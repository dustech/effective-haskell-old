module Chapter3.TypeHoleDemo where
import Distribution.Compat.Lens (_1)

exNum :: [Int]
exNum = [1..10]

getFiveNums :: [Int]
getFiveNums = take 5 _

