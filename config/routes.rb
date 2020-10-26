Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'dynamic_pages#users'
  get '/', to: 'dynamic_pages#home', as: 'dynamic_pages_home'
  get '/:first_name', to: 'dynamic_pages#home', as: 'dynamic_pages_home_name'
  get '/gossips/:id', to: 'dynamic_pages#show', as: 'dynamic_pages_show'
  get '/profiles/:first_name', to: 'dynamic_pages#profile', as: 'dynamic_pages_profile'
end
