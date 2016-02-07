json.array!(@outgoing_ratings) do |outgoing_rating|
  json.extract! outgoing_rating, :id, :tenant_id, :agent_id, :lease_holder, :rent_amount, :rent_frequency, :rent_arrears, :rent_arrears_remedied, :nrt_received, :nrt_reason, :inspection_periodic, :inspection_clean, :inspection_pets, :inspection_dammage, :inspection_dammage_comment, :neighbor_complaints, :neighbor_complaints_comment, :bond_refunded, :bond_refunded_comment, :tenancy_terminated, :tenancy_terminated_by, :tenancy_terminated_comment
  json.url outgoing_rating_url(outgoing_rating, format: :json)
end
