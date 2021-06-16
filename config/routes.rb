Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get "index", to: "main#index"
    post "index", to: "main#guess"

    get "new_number", to: "main#new_number"
    # SET MAIN INDEX TO BE ROOT PAGE
    root to: "main#index"
end
