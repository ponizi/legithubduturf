Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitors
  post '/index', :to => "visitors#create"
  get '/index', :to => "static_pages#index"
end
