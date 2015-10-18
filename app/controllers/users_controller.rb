class UsersController < ApplicationController
  before_action :edit_user_params, only: [:edit, :update, :followings, :show, :followers]
  
  def index
    @users = User.all
  end
  
  def show
    # @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    if @user.update(user_params)
      redirect_to root_path , notive: 'プロフィールを編集したで'
    else
      render 'edit'
    end
  end
  
  def destroy
    
  end
  
  def followings
    # @user = User.new
    @following_users = @user.following_users
  end
  
  def followers
    # @user = User.new
    @followers_users = @user.follower_users
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile, :region)
  end
  
  def edit_user_params
    @user = User.find(params[:id])
  end
end
