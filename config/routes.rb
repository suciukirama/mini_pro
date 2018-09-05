Rails.application.routes.draw do
  resources :post_blogs
  get 'post/show'
  get 'post/index'
  get 'post/create'
  get 'post/destroy'
  get 'post/update'
  get 'post/new'
  resources :users  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'pages#index'
  get '/about', to: 'pages#about'
  get '/sample_blog_post', to: 'pages#post'  

end
