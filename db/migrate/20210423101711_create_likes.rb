class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :post_id

      t.timestamps
      t.index [:user_id, :post_id], unique: true
    end
  end
end
