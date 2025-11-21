Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "lists#index"

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # Defines the root path route ("/")
end



# Une fois encore, tu dois avoir une idée précise des fonctionnalités de ton application pour créer tes routes. Voici la liste des fonctionnalités :

# Un utilisateur peut voir toutes les listes
# GET "lists"
# Un utilisateur peut voir les détails d’une liste donnée et son nom
# GET "lists/42"
# Un utilisateur peut créer une nouvelle liste
# GET "lists/new"
# POST "lists"
