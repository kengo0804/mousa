class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :gener_id
      t.integer :user_id
      t.string :genre_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
