class CommentsController < ApplicationController
  def new
    @comments = Comment.all
    @comment = Comment.new
  end


  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/posts/#{@comment.post.id}"
    end
  end

    private
    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
    end
end