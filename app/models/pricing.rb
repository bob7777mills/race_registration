class Pricing < ActiveRecord::Base
  def user_display_values
    "#{first_name} #{last_name}, #{gender}, #{city}, #{state_cd}, #{born_on}"
  end
   belongs_to :race
end
