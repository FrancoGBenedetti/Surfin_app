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

  def find_products
    if params[:buscar].present?
      @products = Product.where('name like ?', "%#{params[:buscar]}%")
      respond_to do |format|
        format.js
      end
    else
      @products = Product.all
    end
  end
end
