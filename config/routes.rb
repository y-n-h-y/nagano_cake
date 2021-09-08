Rails.application.routes.draw do
  namespace :admin do
    resources :order_details
    resources :orders
    resources :genres
    resources :items
    get '/' => 'homes#top' 
  end
  
  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    resources :items
    resources :cart_items
    resources :orders
    resources :addresses
  end
  
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
