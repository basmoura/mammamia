class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  def index
    @pizzas = Pizza.where(restaurant_id: params[:restaurant_id]).paginate(page: params[:page]).order("name")
  end

  def show
  end

  def new
    @pizza = Pizza.new
    @ingredients = Ingredient.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.restaurant_id = params[:restaurant_id]
    if @pizza.save
      redirect_to restaurant_pizzas_path
      flash["success"] = "Pizza cadastrada com sucesso."
    else
      render :new
    end
  end

  def edit
    @ingredients = Ingredient.all
  end

  def update
    params[:pizza][:ingredient_ids] ||= []

    if @pizza.update(pizza_params)
      redirect_to restaurant_pizzas_path
      flash["success"] = "Pizza atualizada com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @pizza.destroy
    redirect_to root_path
    flash["success"] = "Pizza removida com sucesso."
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name, :description, :price, :kcal,
                                  :ingredient_ids => [])
  end

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end
end
