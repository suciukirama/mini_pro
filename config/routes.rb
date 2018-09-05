Rails.application.routes.draw do
  get 'session/new'
  get 'session/signup'
  get 'session/create'
  resources :post_blogs
  get 'post/show'
  get 'post/index'
  get 'post/create'
  get 'post/destroy'
  get 'post/update'
  get 'post/new'
  resources :users  
  get 'users/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'pages#index'
  get '/about', to: 'pages#about'
  get '/sample_blog_post', to: 'pages#post'  

  get '/login', to: 'users#login2'
  post '/login', to: 'users#create2'
  get '/logout', to: 'session#destroy'
  get '/signup', to: 'session#destroy'
end
