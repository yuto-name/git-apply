class Product < ApplicationRecord
    
    has_many :tweets
    belongs_to :user
    def self.search(search)
       if search!= ""
        Product.where(['name LIKE(?) OR store LIKE(?) OR details LIke(?) OR category LIKE(?)' ,"%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
       else
          Product.all
       end
    end    
end
