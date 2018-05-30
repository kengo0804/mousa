class CreateReceptions < ActiveRecord::Migration[5.1]
  def change
    create_table :receptions, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :order_id
      t.datetime :created_at
      t.datetime :updated_at

      t.references  :user,  index: true, foreign_key: true
      t.references  :order,  index: true, foreign_key: true

      t.timestamps
    end
  end
end
