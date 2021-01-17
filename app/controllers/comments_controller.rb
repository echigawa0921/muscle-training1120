class CommentsController < ApplicationController
  def new
    @comments = Comment.all
    @comment = Comment.new
  end


  def create
    Comment.create(comment_params)
    @comment = Comment.new(text: params[:comment][:text])
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
    end
  end

    private
    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
    end
end