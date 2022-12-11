Rails.application.routes.draw do
  resources :serials
  resources :actors

  root "serials#index"
end
