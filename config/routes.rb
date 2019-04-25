Rails.application.routes.draw do

  # localhost3000/admin/dashboard/main is what I want the route to look like


  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end





  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts

  # globbing - group items and group routes together

  get 'posts/*missing', to: 'posts#missing'  

  root to: 'pages#home'
  
end
