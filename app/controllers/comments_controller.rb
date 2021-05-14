class CommentsController < ApplicationController
    
  def index
    @comments = Comment.all
  end
    
  def new
    @comment = Comment.new
  end
    
  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to comments_path
  end
  
  # DELETE /posts/1
  def destroy
    @comment= Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end
  
    
  end

  #######
  private
  #######

  def comment_params
    params.require(:comment).permit(:content)
  end