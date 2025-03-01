Rails.application.routes.draw do
  devise_for :users
  as :user do   
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do 
    resources :comments, only: :create
  end
end

