let $completedPurchases := count(doc("BankCard.xml")//Purchase_Status[. = 'Complete'])
let $pendingPurchases := count(doc("BankCard.xml")//Purchase_Status[. = 'Pending'])
return
  <Purchases>
    <Completed>{ $completedPurchases }</Completed>
    <Pending>{ $pendingPurchases }</Pending>
  </Purchases>