-- puoi lanciare anche facendo runhaskell + nome file

module Main where

-- main = print "Hello, World!"


main = do
  --putStrLn greeting 
  putStr (show 666)
  print "Mi piace la salsiccia!"

saluta primaPersona secondaPersona = primaPersona <> " dice ciao a " <> secondaPersona

salutaInfix secondaPersona = (`saluta` secondaPersona)

bongo = "trippolo"

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

