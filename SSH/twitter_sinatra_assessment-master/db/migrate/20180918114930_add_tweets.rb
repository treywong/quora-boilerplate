
class AddTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :username, :string
  end
end