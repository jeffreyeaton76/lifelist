class CommentsController < ApplicationController

  def index
  end

  def create
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    @comment.user = @current_user
    @comment.save
    redirect_to post_url(@post)
  end

  def new
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def show
    redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def destroy
    redirect_to root_path unless @current_user
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
