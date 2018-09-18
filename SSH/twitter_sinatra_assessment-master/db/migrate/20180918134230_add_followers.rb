
class AddFollowers < ActiveRecord::Migration[5.0]
  def change
  	add_column :followers, :follower_name, :string
    add_column :followers, :username, :string
  end
end