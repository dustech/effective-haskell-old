module Main where

saluta saluto persona =
  saluto <> " " <> persona

saluta' saluto persona =
  let salutaConSpazio = saluto <> " "
  in salutaConSpazio <> persona

salutoEsteso persona =
  let ciao = saluta ciaoString persona
      buongiorno = saluta "Buongiorno" persona
      aDopo = saluta "Ci vediamo dopo" persona
      ciaoString = "Ciao man"
  in ciao <> "\n" <> buongiorno <> "\n" <> aDopo <> "\n"

dammiNumeri first =
  let joinaConSpazio a b = a <> " " <> b
  in joinaConSpazio (show first) "bongo"

-- main = print $ saluta "Ciao" "Giorgio"

main = putStr $ salutoEsteso "Pongo"

