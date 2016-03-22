class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

  def new
    redirect_to root_path unless @current_user
    @post = Post.new
  end

  def create
    redirect_to root_path unless @current_user
    @post = Post.new(post_params)
    @post.user = @current_user
    if @post.save
      redirect_to @post
    end
  end

  def edit
    redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => :index
  end

  private

  def post_params
    params.require(:post).permit(:bird, :img_url, :date_seen, :city, :state, :field_notes)
  end

end
