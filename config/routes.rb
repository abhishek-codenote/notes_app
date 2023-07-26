Rails.application.routes.draw do
  get '/', :to => 'notes#index'    #first route to the index page
  get '/notes/:id', :to => 'notes#show'   #second route for a new page and it is for the same controller but for different action i.e. SHOW
  post '/notes/create', :to => 'notes#create'
end
