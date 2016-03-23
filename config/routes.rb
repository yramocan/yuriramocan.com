Rails.application.routes.draw do
  get 'experiences/edit'

  get 'experiences/new'

  root 'projects#index'
  resources :projects
  get '/admin' => 'projects#new'
end
