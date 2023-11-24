let $customerId := "5"
let $customer := doc("customer.xml")//Customer[@ID = $customerId]
let $eventType := $customer/EventPreference
let $event := doc("event.xml")//Event[@Type = $eventType]
where $customer and $event
return
  string-join((
    "--- Customer Info ---",
    "Name: " || data($customer/Name),
    "Event Preference: " || data($customer/EventPreference),
    "",
    "--- Event Info ---",
    "Event Name: " || data($event/EventName),
    "Event Performer: " || data($event/EventPerformer),
    "Venue Name: " || data($event/EventVenue/VenueName),
    "Venue Location: " || data($event/EventVenue/VenueLocation),
    "Venue Capacity: " || data($event/EventVenue/VenueCapacity)
  ), "&#10;")
