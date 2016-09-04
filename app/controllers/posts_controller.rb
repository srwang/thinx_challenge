class PostsController < ApplicationController

	def index
		if session[:user_id]
			@posts = Post.all
		else
			redirect_to sessions_path
		end
	end

	def create
		Post.create(title: params[:title], content: params[:content], user_id: session[:user_id]);
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end

end