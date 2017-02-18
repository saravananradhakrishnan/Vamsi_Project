class User < ApplicationRecord
  has_many :carts
  has_many :products
  has_many :purchases
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
