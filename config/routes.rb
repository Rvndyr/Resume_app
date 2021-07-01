Rails.application.routes.draw do
  get "/students" => "student#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/students/:id" => "student#show"
  post "/students" => "student#create"
  patch "/students/:id" => "student#update"
  delete "/students/:id" => "student#destroy"

<<<<<<< HEAD
  get "/experiences" => "experience#index"
  get "/experiences/:id" => "experience#show"
  post "/experiences" => "experience#create"
  patch "/experiences/:id" => "experience#update"
  delete "/experiences/:id" => "experience#destroy"
=======
  # Sessions Route:
  post "/sessions" => "sessions#create"
>>>>>>> b868fa5e4c9f15b52a9255dc28009da59663eef6
end
