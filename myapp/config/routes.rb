Rails.application.routes.draw do
  resources :coveks
  get 'pages/info'
  root to: redirect('/coveks')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
