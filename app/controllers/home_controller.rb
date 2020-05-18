class HomeController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(10).order('posts.created_at DESC')
  end
end
