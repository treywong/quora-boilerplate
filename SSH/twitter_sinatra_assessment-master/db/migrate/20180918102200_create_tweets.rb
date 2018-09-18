
class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
    	t.string :post
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end