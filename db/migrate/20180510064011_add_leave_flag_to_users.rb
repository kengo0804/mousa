class AddLeaveFlagToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :leave_flag, :string
  end
end
