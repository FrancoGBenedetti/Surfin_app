class Product < ApplicationRecord
	belongs_to :category
	belongs_to :brand

	has_many :comments
	
	belongs_to :user

	has_many :photos

	has_many :specs, dependent: :destroy
	has_many :tags, through: :specs, dependent: :destroy
end
