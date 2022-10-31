Rails.application.routes.draw do
  get 'contact', to: 'contacts#new'
  get 'preview', to: 'pages#preview'
  resources :contacts, only: [:index, :new, :create]
  resources :resumes
  resources :skills
  resources :experiences
  resources :educations
  resources :languages
  root 'pages#home'
end
