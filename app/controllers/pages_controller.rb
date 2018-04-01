class PagesController < ApplicationController
  def index
  	@products = Product.order('created_at DESC LIMIT 5')

  end

  def search
  	@products = Product.all

  	@cantidades = []
  	Category.all.each do |category|
  		@cantidades << category.products.size
  	end
    
  end

  def info
  end
end
