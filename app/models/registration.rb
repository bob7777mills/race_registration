class Registration < ActiveRecord::Base
   has_one :age_group_detail
  has_and_belongs_to_many :races
end
