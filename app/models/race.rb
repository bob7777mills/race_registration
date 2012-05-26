class Race < ActiveRecord::Base
  def race_display_values
    "#{name}, #{starts_at}, #{description}"
  end
   has_many :pricings
   has_and_belongs_to_many :registrations
   belongs_to :event
   belongs_to :age_group_category
   belongs_to :sport
end
