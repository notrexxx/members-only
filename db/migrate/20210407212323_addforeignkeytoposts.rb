class Addforeignkeytoposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id, :integer, null: false 
    add_foreign_key :posts, :users
  end
end
