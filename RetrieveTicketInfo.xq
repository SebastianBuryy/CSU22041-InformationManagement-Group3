declare function local:getTicketInfo($xml as document-node()) as element(Ticket)* {
  $xml/Tickets/Ticket
};

let $xml := doc('ticket.xml')
let $ticketType := 'Student'
let $tickets := local:getTicketInfo($xml)[TicketType = $ticketType]

for $ticket in $tickets
return
  string-join(
    (
      "--- Ticket Information ---",
      concat("Number: ", $ticket/@Number),
      concat("Price: ", $ticket/TicketPrice),
      concat("Availability: ", $ticket/TicketAvailability),
      concat("Type: ", $ticket/TicketType),
      concat("Date: ", $ticket/EventDate),
      concat("Seat: ", $ticket/SeatNumber),
      concat("Venue: ", $ticket/VenueLocation)
    ),
    '&#xA;'  (: Line break character :)
  )