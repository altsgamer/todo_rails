Rails.application.routes.draw do
  get '/todos' => 'todos#index'
  get '/todos/:id' => 'todos#show'
  post '/todos' => 'todos#create'
  put '/todos/:id' => 'todos#updated'
  delete '/todos/:id' => 'todos#destroy'
end
