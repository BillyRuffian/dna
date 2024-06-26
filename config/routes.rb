Rails.application.routes.draw do
  resource :complement, only: [:show] do 
    post :sequence, on: :member
  end
  resource :codon, only: [:show] do
    post :convert, on: :member
  end
  resource :digestion, only: :show do 
    post :digest, on: :member
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "complements#show"
end
