class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      ActionCable.server.broadcast 'comments',
        comment: @comment.content,
        user: @comment.user.full_name,
        timestamp: @comment.timestamp
      head :ok
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :event_id)
    end

end
