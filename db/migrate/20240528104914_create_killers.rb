class CreateKillers < ActiveRecord::Migration[7.1]
  def change
    create_table :killers do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
