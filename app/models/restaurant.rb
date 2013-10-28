class Restaurant < ActiveRecord::Base
  validates :name, presence: {  message: "é obrigatório" }
  validates :address, presence: {  message: "é obrigatório" }
  validates :capacity, presence: {  message: "é obrigatório" }
  has_attached_file :photo
  has_many :pizzas

  self.per_page = 10
end
