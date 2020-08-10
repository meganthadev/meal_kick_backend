class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.text :instructions
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
