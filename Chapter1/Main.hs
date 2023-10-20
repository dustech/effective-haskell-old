-- puoi lanciare anche facendo runhaskell + nome file

module Main where

-- main = print "Hello, World!"


main = do
  --putStrLn greeting 
  putStr (show 666)
  print "Mi piace la salsiccia!"

saluta primaPersona secondaPersona = primaPersona <> " dice ciao a " <> secondaPersona

salutaInfix secondaPersona = (`saluta` secondaPersona)

flipme fn arg1 arg2 = fn arg2 arg1

sayThree a b c = a <> " " <> b <> " " <> c

addOne num = num + 1
timesTwo num = num * 2
squared num = num * num
minusFive num = num - 5

addTwo = addOne . addOne 

multiplyFive = \x -> x * 5

addTwoThenMultiplyFive = multiplyFive . addTwo

addTwoThenMultiplyFive' x = multiplyFive . addTwo $ x


multi5ThenAdd2 = addTwo . multiplyFive

insulta come chi = come <> " " <> chi

insulta' come =((come <> " ")<>)

insulta'' come = (<>) (come <> " ")

insulta''' = (<>) . (\come -> come <> " ")

insulta4 = (<>) . (<> " ")

bongo = "trippolo2"
(<+>) a b = a + b

infixl 7 `divide`
divide = (/)

infixr 7 `divide'`
divide' = (/)


-- salutation = "Hello"
-- person = "Bongo"

-- greeting =
--   salutation <> " " <> person

-- message = "topo"

-- makeGreeting salutation' person' = salutation' <> " " <> person'

-- salutaDue = (`makeGreeting` "Due")
-- salutaDue' x = x (`makeGreeting` "Due")
-- salutaDue'' x = makeGreeting x "Due"

-- mkGreInfix x y = x `makeGreeting` y
-- mkGreInfix' = ("bongo" `makeGreeting`)

