Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/creditos'

  get 'static_pages/caracteristicas'

end
