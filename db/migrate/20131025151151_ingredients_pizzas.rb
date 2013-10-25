class IngredientsPizzas < ActiveRecord::Migration
  def change
    create_table 'ingredients_pizzas', id: false do |t|
      t.column :ingredient_id, :integer
      t.column :pizza_id, :integer
    end
  end
end
