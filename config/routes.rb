Rails.application.routes.draw do


root "users#signup"
  get "/signup" => "users#signup"
  get "login" => "users#login"
post "login" => "users#valid"
get "wel" => "users#wel"
get "goal" => "users#goal"


 resources :users


end
