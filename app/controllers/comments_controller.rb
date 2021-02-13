class CommentsController < ApplicationController

  def index
  end

  def create
    # JGZ - I notice this repeated for everything here, can you think of a way to DRY this up?
    redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    # JGZ - Nice! I like this, though i think you can shorten it up by saving it all at once?
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
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def update
    redirect_to post_path unless @current_user
    @comment = Comment.find(params[:id])
    @post = @comment.post
    if @comment.update(comment_params)
      redirect_to @post
    else
      render 'edit'
    end
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
