Ndsc::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'registrations'}
  devise_scope :user do
  	authenticated :user do
  		root to: 'thirteen#index'
  	end
  	unauthenticated :user do
  		root to: 'thirteen#index'
  	end
  end
  resources :users, only: [:index, :show]
  get '/program' => 'thirteen#program', as: "program"
  get '/housing' => 'thirteen#housing', as: "housing"
  get '/transportation' => 'thirteen#transportation', as: "transportation"
  get '/contact' => 'thirteen#contact', as: "contact"

  get '/about' => 'pages#about', as: "about"
  get '/host' => 'pages#host', as: "host"
  get '/gallery' => 'pages#gallery', as: "gallery"
end
