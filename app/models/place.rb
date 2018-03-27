class Place < ApplicationRecord
  has_many :events

  def last_attendance()
    last_event = Event.where(place:self).order("start_date").limit(1).first
    number_tickets = ticket.where(event: last_event).count
    return number_tickets
  end
  
end
