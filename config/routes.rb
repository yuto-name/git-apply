Rails.application.routes.draw do
  devise_for :users
   root 'reviews#index'
   
   resources :reviews
   resources :products do
       resources :tweets, only: [:new, :create, :edit, :destroy]
       collection do 
           get 'search'
       end
   end
   resources :comments
   
   resources :users, only: :show 
end
