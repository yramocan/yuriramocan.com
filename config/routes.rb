Rails.application.routes.draw do
  get 'educations/edit'
  get 'educations/new'

  resources :projects
  resources :experiences
  resources :educations

  root 'projects#index'
  get '/admin' => 'projects#new'
end
