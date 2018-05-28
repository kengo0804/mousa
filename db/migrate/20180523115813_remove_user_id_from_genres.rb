class RemoveUserIdFromGenres < ActiveRecord::Migration[5.1]
  def change
    remove_column :genres, :user_id, :integer
    remove_column :genres, :gener_id, :integer
  end
end
