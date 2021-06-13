class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :question
      t.text :review
      t.text :comment
      t.string :place
      t.string :product
      t.text :details
      t.timestamps
    end
  end
end
