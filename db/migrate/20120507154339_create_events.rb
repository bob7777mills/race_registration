class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    t.references :organizer
    t.string :name, :null => false
    t.string :website
    t.string :description
    t.date :starts_on, :null => false
    t.date :ends_on, :null => false
    t.string :address
    t.string :city, :null => false
    t.string :state_cd, :null => false
    t.string :zip_cd
    t.timestamps
    end
  end
end
