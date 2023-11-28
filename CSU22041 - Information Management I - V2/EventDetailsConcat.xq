for $event in doc("event.xml")//Event
return
  <EventInfo>
    { fn:concat(
        data($event/EventName),
        ' | ', data($event/EventPerformer),
        ' | ', data($event/EventDate),
        ' | ', data($event/EventVenue/VenueName),
        ' | ', data($event/EventVenue/VenueLocation)
      )
    }
  </EventInfo>
