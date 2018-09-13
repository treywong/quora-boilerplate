
class AddName < ActiveRecord::Migration[5.0]

  def change
  	add_column :questions, :questioner_name, :string
  	add_column :answers, :answerer_name, :string
  	add_column :users, :username, :string
  end

end

