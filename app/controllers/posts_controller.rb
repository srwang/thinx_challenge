class PostsController < ApplicationController

	def index
		if session[:user_id]
			@posts = Post.all
		else
			redirect_to sessions_path
		end
	end

	def new 
	end

	def create
		#write img file to bucket

		if params[:file]
			obj = S3_BUCKET.objects[params[:file].original_filename]

			obj.write(
				file: params[:file],
				acl: :public_read
			)

			#save post to db, including new img url
			Post.create(title: params[:title], content: params[:content], user_id: session[:user_id], img_url: obj.public_url)
		else 
			Post.create(title: params[:title], content: params[:content], user_id: session[:user_id])
		end
		redirect_to posts_path
	end

	def show
		if session[:user_id]
			@post = Post.find(params[:id])
			@comments = @post.comments
		else
			redirect_to sessions_path
		end
		
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :img_url)
	end

end