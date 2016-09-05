class CommentsController < ApplicationController

	def create

		if (params[:comment_id] != '')
			Comment.create(content: params[:content], user_id: session[:user_id], comment_id: params[:comment_id])
		else 
			Comment.create(content: params[:content], user_id: session[:user_id], post_id: params[:post_id])
		end

		redirect_to post_path(params[:post_id])
	end

	def new
		@post = Post.find(params[:post_id])

		if (params[:comment_id])
			@comment_id = params[:comment_id]
		else 
			@comment_id = ''
		end
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :post_id, :comment_id)
	end

end