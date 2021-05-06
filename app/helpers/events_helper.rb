module EventsHelper
  def event_attendance (event)
    if event.attendees.empty? 
     attend = '<li >This event has no attendees yet</li>'
    else 
    attend = ' '
     event.attendees.each do |attendee|
      attend += "<li> #{attendee.name} </li>"
      end
    end
    attend.html_safe
  end
end
