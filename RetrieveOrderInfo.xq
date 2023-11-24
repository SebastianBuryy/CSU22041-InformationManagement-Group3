let $userId := "148"
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
