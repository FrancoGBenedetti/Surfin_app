class CommentsController < ApplicationController
  def create
      @product = Product.find(params[:product_id])
      @user = current_user

      @comment = Comment.new(comment_params)

      @comment.product = @product
      @comment.user = current_user

      @comment.save
  end

  def destroy
      @product = Product.find(params[:product_id])
      @photo = Photo.find(params[:id])

      @photo.destroy
      redirect_to edit_product_path(@product)
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
