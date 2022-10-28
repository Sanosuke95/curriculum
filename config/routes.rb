Rails.application.routes.draw do
  get 'skills/index'
  get 'skills/new'
  get 'skills/edit'
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:index, :new, :create]
  resources :resumes
  resources :skills
  root 'pages#home'
end
