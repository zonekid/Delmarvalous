class CreateSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :species do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :status
      t.string :threat
      t.string :img_url
      t.references :category, index: true, foreign_key: true
    end
  end
end
