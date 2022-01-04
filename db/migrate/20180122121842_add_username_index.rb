class AddUsernameIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :username,                unique: true
    add_index :users, :group,                unique: true
  end
end
