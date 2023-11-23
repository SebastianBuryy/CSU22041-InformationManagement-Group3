//Built In Querey
for $event in doc("events.xml")//Event
return
  <EventInfo>
      { fn:concat(
          data($event/Event.name),
          ', ',
          data($event/Event.date),
          ', ',
          data($event/Event.venue/EventVenue/Venue.capacity)
        )
      }
  </EventInfo>
