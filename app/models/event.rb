class Event < ActiveRecord::Base
  def event_display_values
    "#{name} - #{address}, #{city}, #{state_cd}"
  end
   belongs_to :organizer
   has_many :races
end
