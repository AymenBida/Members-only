class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(posts_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all.reverse
  end

  private

  def posts_params
    params.require(:post).permit(:title, :body)
  end
end
