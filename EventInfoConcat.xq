//Built In Querey
for $event in doc("events.xml")//Event
return
  <EventInfo>
      { fn:concat(
          data($event/Event.name),
          ', ', data($event/Event.performer),
          ', ', data($event/Event.date)
        )
      }
  </EventInfo>
