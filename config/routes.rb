Rails.application.routes.draw do
  get "/students" => "students#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/students" => "students#show"
end
