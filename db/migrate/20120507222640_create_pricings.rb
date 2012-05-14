class CreatePricings < ActiveRecord::Migration
  def change
    create_table :pricings do |t|
    t.references :race
    t.string :price_type, :null => false
    t.date :starts_on, :null => false
    t.date :ends_on, :null => false
    t.date :promo_code
    t.boolean :active, :null => false
    t.decimal :amount, :precision => 2, :scale => 6, :null => false
    t.string :comments
    t.timestamps
    end
  end
end
