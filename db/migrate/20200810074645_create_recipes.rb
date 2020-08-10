class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.text :instructions
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
