class RemoveBudgetFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :budget, :integer
  end
end
