class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :species, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

    end
  end
end
