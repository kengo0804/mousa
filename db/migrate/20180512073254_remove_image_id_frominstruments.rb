class RemoveImageIdFrominstruments < ActiveRecord::Migration[5.1]
  def change
  	# [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :instruments, :image_id, :text
  end
end
