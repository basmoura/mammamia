Mammamia::Application.routes.draw do
  resources :restaurants do
    resources :pizzas
  end
  resources :ingredients

  root to: "home#index"
end
