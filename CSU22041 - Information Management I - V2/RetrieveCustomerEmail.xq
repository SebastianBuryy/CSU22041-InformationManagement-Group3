for $customer in doc("customer.xml")//Customer
where contains($customer/EventPreference, "Sports")
return string($customer/User_Email)

