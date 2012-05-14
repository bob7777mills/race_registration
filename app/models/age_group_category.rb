class AgeGroupCategory < ActiveRecord::Base

  def age_group_category_display_values
      "#{name}"
  end
  has_many :age_group_details
  accepts_nested_attributes_for :age_group_details


  has_many :races
end
