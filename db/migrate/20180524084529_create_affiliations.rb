class CreateAffiliations < ActiveRecord::Migration[5.1]
  def change
    create_table :affiliations, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :affiliation_name

      t.timestamps
    end
  end
end
