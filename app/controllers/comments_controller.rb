class CommentsController < ApplicationController

	def create
		Comment.create(content: params[:content], user_id: session[:user_id], post_id: params[:post_id])
		redirect_to post_path(params[:post_id])
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :post_id)
	end

end