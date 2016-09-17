Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#home'
  get 'creditos' => 'static_pages#creditos'
  get 'caracteristicas' => 'static_pages#caracteristicas'
  resources :cvs
end
