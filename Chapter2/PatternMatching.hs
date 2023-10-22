customGreeting "George" = "Oh, hey George!"
customGreeting "Mungo" = "Oh, hey Mungo! Grondo"
customGreeting name = "Buongiorno " <>  name


addValues [] = 0
addValues (first:rest) = first + (addValues rest)

printHead [] = "vuoto di brutto"
printHead lst@(head:_tail) =
  "la testa di " <> show lst <> " e' " <> show head
