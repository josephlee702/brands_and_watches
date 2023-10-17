Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: "welcome#index"
  get '/brands', to: 'brands#index'

  get '/brands/new', to: 'brands#new'
  # :id is being sent as a param[:id] to the show function in brands controller
  post "/brands", to: "brands#create"

  get '/brands/:brand_id', to: 'brands#show'
  get "/brands/:brand_id/edit", to: "brands#edit"
  patch "/brands/:brand_id", to: "brands#update"
  delete "/brands/:brand_id", to: 'brands#destroy'

  get '/brands/:brand_id/watches', to: 'brands_watches#index'
  get '/brands/:brand_id/watches/new', to: 'brands_watches#new'
  post '/brands/:brand_id/watches', to: 'brands_watches#create'

  get '/watches', to: 'watches#index'
  get '/watches/:watch_id/edit', to: 'watches#edit'
  get '/watches/:watch_id', to: 'watches#show'
  patch "/watches/:watch_id", to: 'watches#update'
  delete "/watches/:watch_id", to: 'watches#destroy'
end