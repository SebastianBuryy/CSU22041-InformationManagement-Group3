for $customer in doc("Customers.xml")//Customer
where contains($customer/Customer.EventPreference, "Musicals")
return string($customer/User.User_Email)
