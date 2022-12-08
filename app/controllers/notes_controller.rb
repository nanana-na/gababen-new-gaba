class NotesController < ApplicationController
  def index
  end
  def new
    @note = Note.new
  end
  def create
    @note = Note.new(notes_params)
    if @note.save
      redirect_to book_path(notes_params[:book_id]), notice:"成功しました"
    else
      render :new
    end
  end
  def show
    @note = Note
  end
  def edit
  end
  def destroy
    note = note.find(params[:id])
    note.destroy
    redirect_to user_path(note.user), notice: "レシピを削除しました。"
  end
  private
  def notes_params
    params.require(:note).permit(:title, :body, :note_image,:book_id).merge(user_id: current_user.id)
  end
end
