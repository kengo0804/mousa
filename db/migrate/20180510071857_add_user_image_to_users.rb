class AddUserImageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_image_id, :text
  end
end
