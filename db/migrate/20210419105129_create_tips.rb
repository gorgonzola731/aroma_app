class CreateTips < ActiveRecord::Migration[6.1]
  def change
    create_table :tips do |t|
      t.string :title
      t.text :article
      t.string :image

      t.timestamps
    end
  end
end
