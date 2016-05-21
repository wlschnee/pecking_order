class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    @event = Event.find_by(id: comment_params[:event_id]) 
    redirect_to @event
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :event_id)
    end

end
