class RemoveUserIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user_id, :integer
    remove_column :comments, :post_id, :integer
  end
end
