class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :image, :text
    remove_column :users, :image, :text
  end
end
