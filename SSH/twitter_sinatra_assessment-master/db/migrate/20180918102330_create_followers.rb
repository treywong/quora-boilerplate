
class CreateFollowers < ActiveRecord::Migration[5.0]
  def change
    create_table :followers do |t|
    	t.integer :follower_id
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end