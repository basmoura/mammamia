class HomeController < ApplicationController
  def index
    @pizzas = Pizza.paginate(page: params[:page])

    if params[:name].blank?
      @pizzas = @pizzas.order("name")
    else
      @pizzas = @pizzas.includes(:ingredients)
      .where("LOWER(ingredients.name) = ?", params[:name].downcase).references(:ingredients)
    end
  end
end
