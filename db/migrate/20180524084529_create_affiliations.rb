class CreateAffiliations < ActiveRecord::Migration[5.1]
  def change
    create_table :affiliations do |t|
      t.string :affiliation_name

      t.timestamps
    end
  end
end
