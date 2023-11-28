let $completedPurchases := doc("BankCard.xml")//Payment_Information[./Purchase_Status = 'Complete']/Total
let $totalRevenue := sum($completedPurchases)
return
  <FinancialMetrics>
    <TotalRevenue>{ $totalRevenue }</TotalRevenue>
  </FinancialMetrics>
  
(: This XQuery extracts and sums the total values of completed purchases from bankcard.xml. The result is encapsulated in an XML element, "FinancialMetrics," with a child element "TotalRevenue" containing the calculated sum. :)