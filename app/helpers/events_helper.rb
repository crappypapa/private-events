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

  def event_creator
    if current_user == @event.creator 
      ( link_to "Delete", event_path, method: :delete, class: "btn", data: { confirm: "Delete this event?"} ).to_s.html_safe 
    elsif @event.attendees.include?(current_user) 
     (link_to 'Cancel', cancel_attend_event_path, class: 'btn').html_safe
    else 
     (link_to 'Attend', attend_event_path, class: 'btn' unless @event.date < Time.now).html_safe
    end 
  end
end
