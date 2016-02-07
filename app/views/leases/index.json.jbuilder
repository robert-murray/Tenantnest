json.array!(@leases) do |lease|
  json.extract! lease, :id, :agent_id, :tenant_id, :address_street, :address_suburb, :address_postcode, :address_state, :start_date, :end_date, :currently_active
  json.url lease_url(lease, format: :json)
end
