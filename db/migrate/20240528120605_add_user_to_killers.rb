class AddUserToKillers < ActiveRecord::Migration[7.1]
  def change
    add_reference :killers, :user, null: false, foreign_key: true
  end
end
