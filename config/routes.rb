Rails.application.routes.draw do
  resources :serials

  root "serials#index"
end
