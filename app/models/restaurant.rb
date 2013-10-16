class Restaurant < ActiveRecord::Base
  validates :name, presence: {  message: "teste" }
end
