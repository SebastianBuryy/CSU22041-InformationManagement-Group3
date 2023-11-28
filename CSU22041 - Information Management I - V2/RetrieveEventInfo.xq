let $customerId := "15"
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
  
(: This XQuery retrieves information about a customer with ID "5" from "customer.xml" and their preferred event type. It then retrieves details about an event matching the customer's preference from "event.xml." The query constructs a formatted string with customer and event information, including the customer's name, event preference, and details about the selected event such as event name, performer, venue name, location, and capacity. The result is presented as a string with line breaks, providing a concise summary of both customer and event details. :)
