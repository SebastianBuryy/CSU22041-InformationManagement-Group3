let $customerCount := count(doc("Customers.xml")//Customer)
return concat("Total number of customers: ", $customerCount)