class AddAttachmentToPizzas < ActiveRecord::Migration
  def change
    add_attachment :pizzas, :photo
  end
end
