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
      @comment = Comment.find(params[:id])

      @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
