class RemoveColumnsImgUrlRating < ActiveRecord::Migration[7.1]
  def change
    remove_column :killers, :img_url
    remove_column :killers, :rating
  end
end
