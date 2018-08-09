Rails.application.routes.draw do
  get '/bookmarks/archived', to: 'bookmarks#archived'
  resources :bookmarks, except: [:destroy]

  get '/api/bookmarks', to: 'api/bookmarks#index'
  post '/api/bookmarks', to: 'api/bookmarks#create'

  # #CREATE
  # get '/bookmarks/new', to: 'bookmarks#new'
  # post '/bookmarks', to: 'bookmarks#create'

  # #READ
  # get '/bookmarks', to: 'bookmarks#index'
  # get '/bookmarks/:id', to: 'bookmarks#show'


  # #UPDATE
  # get '/bookmarks/:id/edit', to: 'bookmarks#edit'
  # put '/bookmarks/:id', to: 'bookmarks#update'

  # #DESTROY
  # delete '/bookmarks/:id', to: 'bookmarks#destroy'

  #               #  controller name & method
  get '/about', to: 'pages#about'

  get '/', to: 'pages#home'

  get '/recent', to: 'bookmarks#recent'

  get '/neglected', to: 'bookmarks#neglected'

  put '/bookmarks/archive/:id', to: 'bookmarks#archive_record'

end
