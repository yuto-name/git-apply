class AddProductToReviews < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :reviews, :product, :string
    add_column :reviews, :product, :text
    
  end
end
