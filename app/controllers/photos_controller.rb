class PhotosController < ApplicationController

	def create
	    @product = Product.find(params[:product_id])
	    @photo = Photo.new(photo_params)
	    @photo.product = @product
	    if @photo.save
	      redirect_to edit_product_path(@product)
	    else
	      redirect_to edit_product_path(@product), notice: 'error'
	    end
	end

	def destroy
	    @product = Product.find(params[:product_id])
	    @photo = Photo.find(params[:id])

	    @photo.destroy
	    redirect_to edit_product_path(@product)
	end

	private
	
    def photo_params
      params.require(:photo).permit(:image)
    end
end
