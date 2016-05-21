Rails.application.routes.draw do
  root to: 'top#index'

  # For OmniAuth
  get "/auth/:provider/callback" => "sessions#callback"
  get "/auth/failure"            => "sessions#failure"
  get "/logout"                  => "sessions#destroy", as: :logout

  # tweet
  post '/top/tweet' => 'top#tweet', as: :tweet
end
