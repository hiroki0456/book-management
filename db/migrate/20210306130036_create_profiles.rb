class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.text :content
      t.integer :gender
      t.date :birthday
      t.integer :prefecture_id
      t.references :user
      t.timestamps
    end
  end
end
