class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :specie, index: true, foreign_key: true
    end
  end
end
