//Built In Querey
for $event in doc("events.xml")//Event
return
 string-join(<EventInfo>
      { fn:concat(
         'Event: ', data($event/Event.name),
          ' , Performer : ', data($event/Event.performer),
          ' , Date : ', data($event/Event.date),
          ' , Venue : ', data($event/Event.venue/EventVenue/Venue.name),
          ' , Location : ', data($event/Event.venue/EventVenue/Venue.location)
        )
      }
  </EventInfo>
)

