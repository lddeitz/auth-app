Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    delete "/users/:id" => "users#destroy"
    

    post "/sessions" => "sessions#create"
    get "/users" => "users#index"
  end
end
