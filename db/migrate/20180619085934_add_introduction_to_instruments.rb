class AddIntroductionToInstruments < ActiveRecord::Migration[5.1]
  def change
    add_column :instruments, :introduction, :string
  end
end
