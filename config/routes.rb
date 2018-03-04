Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/fortune_url" => "pages#fortune_method"

  get "/number" => "pages#number_method"

  get "/beer" => "pages#beer_method"

end
