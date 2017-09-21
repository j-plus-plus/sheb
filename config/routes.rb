Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bases' => 'base#index'
  get '/bases/new' => 'base#new'
  post '/bases' => 'base#create'
end
