for $customer in doc("customeraccount.xml")/CustomerAccounts/CustomerAccount
return
  (
    "--- Customer Contact Information ---",
    concat("Name: ", data($customer/Name)),
    concat("Email: ", data($customer/Email)),
    concat("Phone Number: ", data($customer/Phone_Number))
  )