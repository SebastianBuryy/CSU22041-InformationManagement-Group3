let $events := doc("events.xml")/Events

for $event in $events/Event
return
  <VenueInfo>
    <EventName>{ data($event/Event.name) }</EventName>
    <VenueName>{ data($event/Event.venue/EventVenue/Venue.name) }</VenueName>
    <VenueLocation>{ data($event/Event.venue/EventVenue/Venue.location) }</VenueLocation>
  </VenueInfo>

