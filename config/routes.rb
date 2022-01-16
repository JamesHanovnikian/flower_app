Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/flowers" => "flowers#index"
  post "/flowers" => "flowers#create"
  get "flowers/:id" => "flowers#show"
  patch "flowers/:id" => "flowers#update"
  delete "flowers/:id" => "flowers#destroy"
end
