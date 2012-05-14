class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :name, :null => false 
      t.string :website
      t.string :phone_num
      t.string :cell_num
      t.string :email_address, :null => false
      t.string :contact_name 
      t.string :address1, :null => false
      t.string :address2
      t.string :city, :null => false
      t.string :state_cd, :null => false
      t.string :zip_cd, :null=>false
      t.timestamp
    end
  end
end
