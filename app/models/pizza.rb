class Pizza < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  accepts_nested_attributes_for :ingredients
  belongs_to :restaurant
  has_attached_file :photo
  include ActionView::Helpers::NumberHelper

  self.per_page = 10

  def kcal
    "#{read_attribute(:kcal)} kcal" if read_attribute(:kcal)
  end

  def price
    number_to_currency(read_attribute(:price))
  end
end
