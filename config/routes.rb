Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: "welcome#index"
  get '/brands', to: 'brands#index'

  get '/brands/new', to: 'brands#new_brand'
  # :id is being sent as a param[:id] to the show function in brands controller
  post "/brands", to: "brands#create_brand"

  get '/brands/:id', to: 'brands#show'
  get "/brands/:id/edit", to: "brands#edit"
  patch "/brands/:id", to: "brands#update"

  get '/brands/:id/watches', to: 'brands#brand_watches_index'
  get '/brands/:brand_id/watches/new', to: 'watches#new_watch'
  post '/brands/brand:id/watches', to: 'watches#create_watch'

  get '/watches', to: 'watches#index'
  get '/watches/:id', to: 'watches#show'
end