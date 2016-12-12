class PostsController < ApplicationController
	before_action :find_posts, only: [:show, :edit, :update, :destroy]
  def index
  	@post = Post.all.order('created_at DESC')
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def show
  	# finds the post by its parameters
  	# @post = Post.find(params[:id])
  		# don't need these ^ because of before_action DRY 4eva
  end

  def edit
  	# @post = Post.find(params[:id])
  		# don't need these ^ because of before_action DRY 4eva
  end

  def update
  	# @post = Post.find(params[:id])
  		# don't need these ^ because of before_action DRY 4eva

  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@post.destroy
  	redirect_to root_path
  end

# anything below 'private' is only accessible in this file.
  private

  def find_posts
  	@post = Post.find(params[:id])
  end


  # this is the only place where we need this fn
  def post_params
  	params.require(:post).permit(:title, :body)
  end
end