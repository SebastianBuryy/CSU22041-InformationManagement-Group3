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
  
(: This XQuery fetches and formats information about a user associated with a specific order number from "order.xml." It extracts user details from "user.xml" (corresponding to the associated order), including name, status, email, and phone number. The result is formatted using built-in function "string-join()". :)