class AddImageUrlToTops < ActiveRecord::Migration[5.2]
  def change
    add_column :tops, :name, :string
    add_column :tops, :image_url, :text
  end
end
