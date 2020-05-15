Rails.application.routes.draw do
  get '/venues', to: "venues#index"
  get '/venues/:id', to: "venues#show"
  get '/venues/map/:search', to: "venues#search"
end
