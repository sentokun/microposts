class StaticPagesController < ApplicationController
  def home
    # @user = User.find(params[:id])
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
    end
  end
end
