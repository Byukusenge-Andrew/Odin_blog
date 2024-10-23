class AddUserToPosts < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :user, null: true, foreign_key: true
    reversible do |dir|
      dir.up do
        # Replace with an actual user ID from your users table
        default_user_id = User.first.id # Example: getting the first user's ID
        Post.update_all(user_id: default_user_id)
      end
    end
  change_column_null :posts, :user_id, false
  end
end
