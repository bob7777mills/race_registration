class CreateRacesRegistrations < ActiveRecord::Migration
  def change
    create_table :races_registrations, id=>false do |t|
      t.references :race
      t.references :registration
      t.timestamps
    end
  end
end
