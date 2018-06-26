class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.text :live_image
      t.string :live_title
      t.string :live_date
      t.string :live_location
      t.integer :live_price

      t.timestamps
    end
  end
end
