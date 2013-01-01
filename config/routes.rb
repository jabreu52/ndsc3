Ndsc::Application.routes.draw do
  get "speakers/index"

  ActiveAdmin.routes(self)
  root to: 'thirteen#index'
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: [:index, :show]
  resources :speakers, only: [:index]
  get '/program' => 'thirteen#program', as: "program"
  get '/housing' => 'thirteen#housing', as: "housing"
  get '/transportation' => 'thirteen#transportation', as: "transportation"
  get '/contact' => 'thirteen#contact', as: "contact"

  get '/about' => 'pages#about', as: "about"
  get '/host' => 'pages#host', as: "host"
  get '/gallery' => 'pages#gallery', as: "gallery"
end
