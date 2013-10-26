class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @pizzas = Pizza.all
  end
end
