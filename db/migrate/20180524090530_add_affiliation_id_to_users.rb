class AddAffiliationIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :affiliation_id, :integer, default: 1
  end
end
