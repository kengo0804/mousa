class CreateUserInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_instruments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :instrument_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
