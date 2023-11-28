let $userId := "148" (: 148, 256, 678 :)
for $order in doc("order.xml")//Order
where $order/@UserID = $userId
return
  string-join((
    "Order Number: " || $order/@Number,
    "Ticket Quantity: " || $order/Ticket_Quantity,
    "Order Date: " || $order/Order_Date,
    "Order Status: " || $order/Order_Status,
    "Payment Method: " || $order/Payment_Method,
    "Billing Address: " || $order/Billing_Address
  ), "&#10;")
  
(: This XQuery retrieves and formats order information for a specific user identified by the user ID "148" from the "order.xml" document. It iterates over "Order" elements, filters them based on the specified user ID, and constructs a formatted string containing details such as order number, ticket quantity, order date, order status, payment method, and billing address. The result is a string with line breaks, presenting a concise summary of the user's orders. :)
