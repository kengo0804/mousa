class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :order_datetime
      t.string :course
      t.integer :budget
      t.string :delivery_date
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
