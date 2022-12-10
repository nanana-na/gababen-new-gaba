class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to talks_path(), notice: "投稿完了"
    else
      redirect_to talks_path(), notice: "投稿失敗"
    end
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :talk_id).merge(user_id: 1)
  end
end
