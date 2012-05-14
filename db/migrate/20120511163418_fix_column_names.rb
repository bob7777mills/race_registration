class FixColumnNames < ActiveRecord::Migration
  def up
    rename_column :users, :date_of_birth, :born_on
    rename_column :users, :zip_code, :zip_cd
    rename_column :organizers, :zip_code, :zip_cd
  end

  def down
  end
end
