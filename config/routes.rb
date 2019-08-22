Rails.application.routes.draw do
  resources :stores do
  resource :items
  end
end