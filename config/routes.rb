Rails.application.routes.draw do
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:index, :new, :create]
  root 'pages#home'
end
