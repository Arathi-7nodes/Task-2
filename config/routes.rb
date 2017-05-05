Rails.application.routes.draw do


    root "users#signup"
    get "/signup" => "users#signup"
    post "/register" => "users#register"
    get "login" => "users#login"
    post "login" => "users#valid"
    get "wel" => "users#wel"
    post "valid" => "users#valid"
    post "logout" => "users#logout"
# get "goal" => "users#goal"
# get "create_goal" => "users#create_goal"


 resources :users
 resources :goals

end
