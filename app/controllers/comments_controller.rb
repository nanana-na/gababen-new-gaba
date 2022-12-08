class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.create(comment_params)
    if @comment.save
      redirect_to talks_path(), notice: "投稿完了"
    else
      render :new
    end
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :talk_id)
  end
end
