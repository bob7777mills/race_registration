class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
    t.references :event
    t.references :sport
    t.references :age_group_category
    t.string     :name, :null => false
    t.timestamp :starts_at, :null => false
    t.string :description
    t.timestamps
    end
  end
end
