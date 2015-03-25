class PostsController < ApplicationController
  def index
    @posts = Post.all  	  
  end
 
  def show
    @post = Post.find(params[:id])
  end

  def new 
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    
    if @post.save	
	redirect_to posts_path, :notice => "Your post was saved"    
    else
	render "new" 
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
	redirect_to posts_path, :notice => "Post updated"
    else
	render "edit"
    end
  end

  def delete
    Post.find(params[:id])
    Post.destroy
    redirect_to posts_path, :notice => "Your post was deleted" 
  end
end

