class RemoveCommmentFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :comment, :text
    remove_column :reviews, :question, :text
    remove_column :reviews, :review, :text
  end
end
