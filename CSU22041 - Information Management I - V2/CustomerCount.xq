let $customerCount := count(doc("customer.xml")//Customer)
return concat("Total Number of Customers: ", $customerCount)