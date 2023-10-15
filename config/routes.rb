Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: "welcome#index"
  get '/brands', to: 'brands#index'
  get '/brands/new', to: 'brands#new'
  # :id is being sent as a param[:id] to the show function in brands controller
  post "/brands", to: "brands#create"
  get '/brands/:id', to: 'brands#show'
  get '/brands/:id/watches', to: 'brands#brand_watches_index'
  get '/watches', to: 'watches#index'
  get '/watches/:id', to: 'watches#show'
end