class HomeController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(10).order(created_at: :desc)
  end

  def about
  end
end
