Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  resources :activities
  root to: "activities#index"
end
