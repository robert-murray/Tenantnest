json.array!(@agents) do |agent|
  json.extract! agent, :id, :first_name, :last_name, :email, :phone, :password_digest
  json.url agent_url(agent, format: :json)
end
