class AddBudgetToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :budget, :string
  end
end
