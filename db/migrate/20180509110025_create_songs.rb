class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :song_id
      t.string :song_titile
      t.text :song_image
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
