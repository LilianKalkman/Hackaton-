Rails.application.routes.draw do
  # For details on thRails.application.routes.draw do
  root "dogs#index"

  get "dogs" => "dogs#index"
end
