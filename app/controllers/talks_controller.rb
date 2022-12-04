class TalksController < ApplicationController
  def index
    @talks = Talk.all
    @comment = Comment.new
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to talks_path(@talk), notice: "投稿完了"
    else
      render :new
    end
  end

  def destroy
  end

  private
  def talk_params
    params.require(:talk).permit(:body, :category).merge(user_id: current_user.id)
  end
end
