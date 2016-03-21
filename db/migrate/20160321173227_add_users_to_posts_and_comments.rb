class AddUsersToPostsAndComments < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :comments, :user_id, :integer
  end
end
