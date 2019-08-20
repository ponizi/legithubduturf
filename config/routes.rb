Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitors 
  root 'static_pages#index'
  post '/', :to => "statics_pages#create"

end
