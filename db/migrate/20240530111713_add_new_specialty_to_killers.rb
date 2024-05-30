class AddNewSpecialtyToKillers < ActiveRecord::Migration[7.1]
  def change
    add_column :killers, :specialty, :string
  end
end
