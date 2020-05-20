class UsersController < ApplicationController
  before_action :set_user, only: %w[edit update destroy show all_posts]

  def index
    @users = User.all
  end

  def show
    @posts = @user.posts.limit(3).order(created_at: :desc)
    @comments = @user.comments
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User profile has been updated!' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'User account has been deleted. Bye!' }
      format.json { head :no_content }
    end
  end

  def all_posts
    @posts = @user.posts.page(params[:page]).per(10).order(created_at: :desc)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:comment).permit(:username, :email, :password, :password_confirmation)
    end
end
