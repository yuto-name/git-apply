class Product < ApplicationRecord
    
    has_many :products_categories
    has_many :categories, through: :products_categories
    has_many :reviews
    has_many :tweets
    belongs_to :user
    has_many :reviews
    def self.search(search)
       if search!= ""
        Product.where(['name LIKE(?) OR store LIKE(?) OR details LIke(?) OR category LIKE(?)' ,"%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
       else
          Product.all
       end
    end    
end
