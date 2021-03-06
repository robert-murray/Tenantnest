Rails.application.routes.draw do
  
  get 'agent_dash/my_details'

  get 'agent_dash/review_requests'

  get 'agent_dash/new_outgoing' => 'agent_dash#new_outgoing'
  post 'agent_dash/new_outgoing' => 'agent_dash#create', :as => "new_outgoing"

  get 'tenant_dash/my_details'

  get 'tenant_dash/lease_history'

  get 'tenant_dash/profile_link'

  get 'tenant_dash/new_lease' => 'tenant_dash#new_lease'
  post 'tenant_dash/new_lease' => 'tenant_dash#create', :as => "new_lease"

  root :to => 'session#new'

  resources :outgoing_ratings
  resources :leases
  resources :agents
  resources :tenants

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

end
