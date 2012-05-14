class CreatePricingTypes < ActiveRecord::Migration
  def change
    create_table :pricing_types do |t|
      t.string :pricing_type
      t.string :description

      t.timestamps
    end
  end
end
