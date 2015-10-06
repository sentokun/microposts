class UsersController < ApplicationController
  before_action :edit_user_params, only: [:edit, :update]
  
  def show
    @user = User.find(params[:id])
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
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile, :region)
  end
  
  def edit_user_params
    @user = User.find(params[:id])
  end
end
