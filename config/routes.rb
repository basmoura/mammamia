Mammamia::Application.routes.draw do
  resources :restaurants

  root to: "home#index"
end
