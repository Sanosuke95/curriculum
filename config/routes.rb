Rails.application.routes.draw do
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:index, :new, :create]
  resources :resumes
  resources :skills
  resources :experiences
  resources :educations
  resources :languages
  root 'pages#home'
end
