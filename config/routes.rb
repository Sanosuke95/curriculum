Rails.application.routes.draw do
  get 'contacts/new'
  resources :contacts
  root 'pages#home'
end
