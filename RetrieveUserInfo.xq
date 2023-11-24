let $orderNumber := "1"
for $order in doc("order.xml")//Order
where $order/@Number = $orderNumber
let $userId := $order/@UserID
return
  string-join((
    "Name: " || doc("user.xml")//User[@ID = $userId]/@Name,
    "Status: " || doc("user.xml")//User[@ID = $userId]/User_Status,
    "Email: " || doc("user.xml")//User[@ID = $userId]/User_Login/User_Email,
    "Phone Number: " || doc("user.xml")//User[@ID = $userId]/User_Phone
  ), "&#10;")