class CreateLeasesTenants < ActiveRecord::Migration
  def change
    create_table :leases_tenants, :id => false do |t|
    t.integer :lease_id
    t.integer :tenant_id
    end
  end
end
