Rails.application.routes.draw do
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

  get '/signup', to: 'session#destroy'

  #following lynda instruction
  get '/login', to: 'session#login'

  post '/attempt', to: 'session#attempt'
  #post'session/attemplogin'
  post '/sign', to: 'users#create'
  get 'session/new'
  get 'session/menu'
  get 'session/signup'
  get 'session/create'
  post '/logout', to: 'session#logout'
  get 'session/admin'
  get '/mypost', to: 'post_blogs#myblog'
end
