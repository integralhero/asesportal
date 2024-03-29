class PostsController < ApplicationController
	def new
		@post = Post.new
	end
	def show
		@post = Post.find(params[:id])
	end
	def edit
		@post = Post.find(params[:id])
	end
	def destroy
	  @post = Post.find(params[:id])
	  @post.destroy
	 
	  redirect_to posts_path
	end
	def update
		@post = Post.find(params[:id])

		if @post.update(params[:post].permit(:title, :text))
			redirect_to @post
		else
			render 'edit'
		end
	end
	def index
		@posts = Post.all
	end
	def create
		@post = Post.new(params[:post].permit(:title, :text))
		@post.user_id = current_user.id if current_user
		if @post.save
			redirect_to @post
		else 
			render 'new'
		end
	end
end
