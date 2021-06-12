class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
validates :nickname, presence: true, length: { maximum: 16 }
validates :image, presence: true
has_many :comments
has_many :reviews
has_many :products
has_one_attached :image

def self.search(search)
  if search!= ""
        User.where(['nickname LIKE(?)',"%#{search}%"])
  end
end
end
