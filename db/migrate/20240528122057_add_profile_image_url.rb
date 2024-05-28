class AddProfileImageUrl < ActiveRecord::Migration[7.1]
  def change
    add_column :killers, :img_url, :string
  end
end
