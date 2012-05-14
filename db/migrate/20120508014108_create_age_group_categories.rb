class CreateAgeGroupCategories < ActiveRecord::Migration
  def change
    create_table :age_group_categories do |t|
    t.string :name, :null => false
    t.string :description, :null => false
    t.timestamps
    end
  end
end
