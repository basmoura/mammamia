class HomeController < ApplicationController
  def index
    @pizzas = Pizza.order("name")

    if params[:name].blank?
      @pizzas = @pizzas.paginate(page: params[:page])
    else
      @pizzas = @pizzas.includes(:ingredients)
      .where("LOWER(ingredients.name) = ?", params[:name].downcase).references(:ingredients)
    end
  end
end
