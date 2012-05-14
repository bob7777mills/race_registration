class CreateAgeGroupDetails < ActiveRecord::Migration
  def change
    create_table :age_group_details do |t|
    t.references :age_group_category
    t.string :gender, :null => false
    t.integer :min_age, :null => false
    t.integer :max_age, :null => false
    t.string :comments
    t.timestamps
    end
  end
end
