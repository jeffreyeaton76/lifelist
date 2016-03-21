class CommentsController < ApplicationController

  def index
  end

  def create
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@post)
  end

  def new
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
    redirect_to root_path unless @current_user
    @comments = Comment.edit
  end

  def show
    redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

end
