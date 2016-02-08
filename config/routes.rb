Rails.application.routes.draw do
  
  get 'agent_dash/my_details'

  get 'agent_dash/review_requests'

  get 'tenant_dash/my_details'

  get 'tenant_dash/lease_history'

  get 'tenant_dash/profile_link'

  root :to => 'session#new'

  resources :outgoing_ratings
  resources :leases
  resources :agents
  resources :tenants

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

end
