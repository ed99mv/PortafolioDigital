Rails.application.routes.draw do
  get 'about_me/index'
  get 'about_me/edit'
  get 'about_me/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  get '/', to: 'home#index' 
  get '/about', to: 'home#about' 

 
  resources :projects
  resources :skills
  resources :contacts
  resources :user

  namespace :admin do 
    resources :projects
    resources :skills
    resources :about_me
  end
 

#admins-----
  get 'admin/about_me'
  get 'admin/skills'
  get 'admin/projects'

end
