class AddRetweetIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :retweet_id, :string
  end
end
