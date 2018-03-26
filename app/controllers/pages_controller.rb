class PagesController < ApplicationController
  def index
  	@products = Product.order('created_at DESC LIMIT 5')

  end

  def search
  end

  def info
  end
end
