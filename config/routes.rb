Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  root to: "blog#index"
end
