class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.integer :gener_id
      t.integer :user_id
      t.string :genre_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
