class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.text :description
      t.float :price
      t.string :species
      t.string :street
      t.string :city
      t.string :country
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
