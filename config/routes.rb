Rails.application.routes.draw do
  resources :labs
  resources :snippets
  devise_for :users
  resources :users

  mount ActionCable.server => '/cable'
  root 'welcome#welcome'

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    get "logout" => "devise/sessions#destroy"
  end
  

end
