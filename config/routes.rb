Rails.application.routes.draw do
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:index, :new, :create]
  resources :resumes
  resources :skills
  resources :experiences
  resources :educations
  root 'pages#home'
end
