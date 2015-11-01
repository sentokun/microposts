class AddRetweetToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :retweet, :string
  end
end
