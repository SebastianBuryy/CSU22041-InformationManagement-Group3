declare function local:getTicketInfo($xml as document-node()) as element(Ticket)* {
  $xml/Tickets/Ticket
};

let $xml := doc('ticket.xml')
let $ticketType := 'Standard'
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
  
(: This XQuery defines a function local:getTicketInfo to extract ticket information. It then retrieves and formats details for tickets of a specific type (e.g Student) from "ticket.xml." The formatted information includes ticket number, price, availability, date, seat number, and venue location. The result is presented as a string with line breaks, with the use of built-in functions "concat()" + "string-join()". :)