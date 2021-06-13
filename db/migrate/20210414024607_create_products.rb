class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :store
      t.text :details
      t.string :category
      t.text :image_url
      t.timestamps
    end
  end
end
