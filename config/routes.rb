Rails.application.routes.draw do 
   devise_for :users
   root 'pages#home'
   get '/upload', to:'images#new'
   resources :images, only: [:index, :show, :create]
 
   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
