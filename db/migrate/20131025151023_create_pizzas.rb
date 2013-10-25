class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :kcal

      t.timestamps
    end
  end
end
