Rails.application.routes.draw do
  get 'home/index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "home#index"

    resources :filmes
    resources :ators
    resources :generos
    resources :produtors

    #get "/filmes", to: "filmes#index"
    #get "/filmes/:id", to: "filmes#show"

end
