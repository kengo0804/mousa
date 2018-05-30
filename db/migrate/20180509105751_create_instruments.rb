class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :instrument_id
      t.string :instrument_name
      t.integer :image_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
