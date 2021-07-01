Rails.application.routes.draw do
  get "/students" => "student#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/students/:id" => "student#show"
  post "/students" => "student#create"
  patch "/students/:id" => "student#update"
  delete "/students/:id" => "student#destroy"

  # Sessions Route:
  post "/sessions" => "sessions#create"
end
