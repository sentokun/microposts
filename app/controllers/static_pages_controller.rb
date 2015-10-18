class StaticPagesController < ApplicationController
  def home
    # @user = User.find(params[:id])
    @micropost = current_user.microposts.build if logged_in?
  end
end
