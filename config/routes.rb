Rails.application.routes.draw do
  get "/params" => "params#index"
  get "/params/:phrase" => "params#show"
  post "/params" => "params#show"
end
