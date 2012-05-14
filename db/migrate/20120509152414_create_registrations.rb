class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
    t.references :user
    t.references :age_group_detail
    t.references :pricing
    t.timestamp  :registered_at, :null => false
    t.boolean    :waiver_signed
    t.boolean    :waiver_signed_under_18
    t.string     :confirm_code
    t.string     :tshirt_size
    t.timestamps
    end
  end
end
