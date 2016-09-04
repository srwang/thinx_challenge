class PostsController < ApplicationController

	def index
		if session[:user_id]
			@posts = Post.all
		else
			redirect_to sessions_path
		end
	end

	def create
		Post.create(title: params[:title], content: params[:content], user_id: session[:user_id])
		redirect_to posts_path
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end

end