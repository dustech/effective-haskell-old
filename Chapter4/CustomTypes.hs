import Distribution.Simple.Setup (trueArg)


-- data CustomerInfo =
--   CustomerInfo Bool Bool

-- someCustomerInfo = CustomerInfo 

data CustomerInfo =
  CustomerInfo String String Int Int

applyDiscount customer =
  case customer of
  (CustomerInfo "George" "Bird" count balance) ->
      CustomerInfo "George" "Bird" count (balance `div` 4)
  (CustomerInfo "Porter" "Pupper" count balance) ->
    CustomerInfo "Porter" "Pupper" count (balance `div` 2)
  otherCustomer -> otherCustomer

--firstName :: CustomerInfo -> String
firstName (CustomerInfo name _ _ _ ) = name
lastName (CustomerInfo _ name _ _ ) = name
widgetCount ( CustomerInfo _ _ count _ ) = count
balance ( CustomerInfo _ _ _ balance ) = balance


showCustomer (CustomerInfo first last count balance) =
  let fullName = first <> " " <> last
      name = "name: " <> fullName
      count' = "count: " <> show count
      balance' = "balance: " <> show balance
  in name <> " " <> count' <> " " <> balance'




customerGeorge = CustomerInfo "George" "Bird" 10 100