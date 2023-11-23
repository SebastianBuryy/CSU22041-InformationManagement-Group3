let $completedPurchases := doc("BankCard.xml")//Payment_Information[./Purchase_Status = 'Complete']/Total
let $totalRevenue := sum($completedPurchases)
return
  <FinancialMetrics>
    <TotalRevenue>{ $totalRevenue }</TotalRevenue>
  </FinancialMetrics>