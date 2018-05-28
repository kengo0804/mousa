class AddReplyDeadlineToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :reply_deadline, :string
  end
end
