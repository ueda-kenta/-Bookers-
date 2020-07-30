Rails.application.routes.draw do
get '/' => 'books#top'
get '/index' => 'books#index'
post '/index' => 'books#create'
get  '/index/:id' => 'books#show' ,as: 'book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
