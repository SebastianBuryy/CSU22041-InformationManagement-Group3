let $events := doc("event.xml")/Events

for $event in $events/Event
return
  <VenueInfo>
    <EventName>{ data($event/EventName) }</EventName>
    <VenueName>{ data($event/EventVenue/VenueName) }</VenueName>
    <VenueLocation>{ data($event/EventVenue/VenueLocation) }</VenueLocation>
  </VenueInfo>
