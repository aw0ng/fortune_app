Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortunes" => "example_pages#fortunes_method"
    get "/lotto" => "example_pages#lotto_method"
  end
end
