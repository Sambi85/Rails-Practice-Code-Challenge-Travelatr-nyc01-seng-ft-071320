class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
    @destinations = Destination.all
  end

  def create
    @post = Post.create(new_post(:title, :content, :likes, :blogger_id, :destination_id))
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:notice] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
  end

  private
  
  def new_post(*args)
    params.require(:post).permit(*args)
  end



end
