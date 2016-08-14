Rails.application.routes.draw do
  root 'static_pages#home'
  get 'creditos' => 'static_pages#creditos'
  get 'caracteristicas' => 'static_pages#caracteristicas'
end
