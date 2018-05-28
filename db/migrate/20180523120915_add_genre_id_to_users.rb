class AddGenreIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :genre_id, :integer, default: 1
  end
end
