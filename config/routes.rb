Rails.application.routes.draw do
  get "/pets" => "pets#index"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  patch "/pets/:id" => "pets#update"
  delete "/pets/:id" => "pets#destroy"

  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
end
