class AgeGroupDetail < ActiveRecord::Base
   has_many :registrations
  belongs_to :age_group_category

end
