Rails.application.routes.draw do
  get '/spices', to: 'spices#index'
  post '/spices', to: 'spices#create'
end
