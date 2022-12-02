class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path(@post), notice: "投稿完了"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path(@post)
    else
      redirect_to posts_path()
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image).merge(user_id: current_user.id)
  end
end
