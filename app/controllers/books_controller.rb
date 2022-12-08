class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to books_path, notice:"成功しました"
    else
      render :new, alert: "失敗"
    end
  end

  def show
    @notes = Note.where(book_id: params[:id]).page(params[:page]).per(2)
    @book_id=params[:id]
    @note = Note.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
  end
  private
  def books_params
    params.require(:book).permit(:title, :body, :book_image).merge(user_id: current_user.id)
  end
end
