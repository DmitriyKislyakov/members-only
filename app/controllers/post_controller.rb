class PostController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to post_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
