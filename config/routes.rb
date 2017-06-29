Rails.application.routes.draw do
  get 'wellcome/index'

  resources :posts do
    resources :comments, :only => [:create]
  end 
  root 'wellcome#index'
end
