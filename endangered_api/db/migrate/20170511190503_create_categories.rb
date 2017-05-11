class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.boolean "customizable"
      t.name  "name"
    end
  end
end
