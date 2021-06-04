class RemovePostIdFromLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :post_id, :string
  end
end
