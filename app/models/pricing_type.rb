class PricingType < ActiveRecord::Base
  def pricing_type_display_values
    "#{pricing_type}"
  end
end
