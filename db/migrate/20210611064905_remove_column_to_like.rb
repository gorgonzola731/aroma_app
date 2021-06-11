class RemoveColumnToLike < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :user_id, :string
  end
end
