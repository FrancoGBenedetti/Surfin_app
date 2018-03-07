class Tag < ApplicationRecord
	has_many :specs
	has_many :products, through: :spec
end
