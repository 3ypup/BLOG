class AddVotesToComments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :vote_1, :integer
  	add_column :comments, :vote_2, :integer
  	add_column :comments, :vote_3, :integer
  	add_column :comments, :vote_4, :integer
  	add_column :comments, :vote_5, :integer
  	add_column :comments, :vote_6, :integer
  	add_column :comments, :vote_7, :integer
  	add_column :comments, :vote_8, :integer
  	add_column :comments, :vote_9, :integer
  	add_column :comments, :vote_10, :integer
  	add_column :comments, :group, :integer

  end
end
