json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :first_name, :last_name, :email, :phone, :password_digest
  json.url tenant_url(tenant, format: :json)
end
