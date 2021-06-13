class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :rate
      t.text :comment
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
  end
end
