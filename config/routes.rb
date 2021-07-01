Rails.application.routes.draw do
  get "/students" => "student#index"
  get "/projects" => "project#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/students/:id" => "student#show"
  get "/projects/:id" => "project#show"
  post "/students" => "student#create"
  post "/projects" => "project#create"
  patch "/students/:id" => "student#update"
  patch "/projects/:id" => "project#update"
  delete "/students/:id" => "student#destroy"
  delete "/projects/:id" => "project#destroy"
end
