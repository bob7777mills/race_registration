class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :middle_init
      t.date   :born_on, :null => false
      t.string :gender, :null => false
      t.string :address1, :null => false
      t.string :address2, :null => false
      t.string :city, :null => false
      t.string :state_cd, :null => false
      t.string :zip_cd
      t.string :phone_num
      t.string :cell_num
      t.string :email_address, :null => false
      t.string :password, :null => false
      t.string :swim_100m_time
      t.boolean :treat_as_user, :null => false
      t.boolean :notify_about_events, :null => false
      t.timestamps
    end
  end
end
