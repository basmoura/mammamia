Mammamia::Application.routes.draw do
  resources :restaurants
  resources :pizzas
  resources :ingredients

  root to: "home#index"
end
