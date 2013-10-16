class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.date :founded_at
      t.string :email

      t.timestamps
    end
  end
end
